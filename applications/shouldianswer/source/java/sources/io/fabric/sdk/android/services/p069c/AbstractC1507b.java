package io.fabric.sdk.android.services.p069c;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.AbstractC1486k;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.fabric.sdk.android.services.c.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/c/b.class */
public abstract class AbstractC1507b<T> {
    public static final int MAX_BYTE_SIZE_PER_FILE = 8000;
    public static final int MAX_FILES_IN_BATCH = 1;
    public static final int MAX_FILES_TO_KEEP = 100;
    public static final String ROLL_OVER_FILE_NAME_SEPARATOR = "_";
    protected final Context context;
    protected final AbstractC1486k currentTimeProvider;
    private final int defaultMaxFilesToKeep;
    protected final AbstractC1510c eventStorage;
    protected volatile long lastRollOverTime;
    protected final List<AbstractC1511d> rollOverListeners = new CopyOnWriteArrayList();
    protected final AbstractC1506a<T> transform;

    /* renamed from: io.fabric.sdk.android.services.c.b$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/c/b$a.class */
    public static class C1509a {

        /* renamed from: a */
        final File f4139a;

        /* renamed from: b */
        final long f4140b;

        public C1509a(File file, long j) {
            this.f4139a = file;
            this.f4140b = j;
        }
    }

    public AbstractC1507b(Context context, AbstractC1506a<T> abstractC1506a, AbstractC1486k abstractC1486k, AbstractC1510c abstractC1510c, int i) {
        this.context = context.getApplicationContext();
        this.transform = abstractC1506a;
        this.eventStorage = abstractC1510c;
        this.currentTimeProvider = abstractC1486k;
        this.lastRollOverTime = this.currentTimeProvider.mo3399a();
        this.defaultMaxFilesToKeep = i;
    }

    private void rollFileOverIfNeeded(int i) {
        if (!this.eventStorage.mo3392a(i, getMaxByteSizePerFile())) {
            C1480i.m3504a(this.context, 4, "Fabric", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", Integer.valueOf(this.eventStorage.mo3394a()), Integer.valueOf(i), Integer.valueOf(getMaxByteSizePerFile())));
            rollFileOver();
        }
    }

    private void triggerRollOverOnListeners(String str) {
        for (AbstractC1511d abstractC1511d : this.rollOverListeners) {
            try {
                abstractC1511d.onRollOver(str);
            } catch (Exception e) {
                C1480i.m3501a(this.context, "One of the roll over listeners threw an exception", e);
            }
        }
    }

    public void deleteAllEventsFiles() {
        AbstractC1510c abstractC1510c = this.eventStorage;
        abstractC1510c.mo3388a(abstractC1510c.mo3385c());
        this.eventStorage.mo3384d();
    }

    public void deleteOldestInRollOverIfOverMax() {
        List<File> mo3385c = this.eventStorage.mo3385c();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (mo3385c.size() <= maxFilesToKeep) {
            return;
        }
        int size = mo3385c.size() - maxFilesToKeep;
        C1480i.m3503a(this.context, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", Integer.valueOf(mo3385c.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)));
        TreeSet treeSet = new TreeSet(new Comparator<C1509a>() { // from class: io.fabric.sdk.android.services.c.b.1
            /* renamed from: a */
            public int compare(C1509a c1509a, C1509a c1509a2) {
                return (int) (c1509a.f4140b - c1509a2.f4140b);
            }
        });
        for (File file : mo3385c) {
            treeSet.add(new C1509a(file, parseCreationTimestampFromFileName(file.getName())));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((C1509a) it.next()).f4139a);
            if (arrayList.size() == size) {
                break;
            }
        }
        this.eventStorage.mo3388a(arrayList);
    }

    public void deleteSentFiles(List<File> list) {
        this.eventStorage.mo3388a(list);
    }

    protected abstract String generateUniqueRollOverFileName();

    public List<File> getBatchOfFilesToSend() {
        return this.eventStorage.mo3393a(1);
    }

    public long getLastRollOverTime() {
        return this.lastRollOverTime;
    }

    public int getMaxByteSizePerFile() {
        return MAX_BYTE_SIZE_PER_FILE;
    }

    public int getMaxFilesToKeep() {
        return this.defaultMaxFilesToKeep;
    }

    public long parseCreationTimestampFromFileName(String str) {
        String[] split = str.split(ROLL_OVER_FILE_NAME_SEPARATOR);
        if (split.length != 3) {
            return 0L;
        }
        try {
            return Long.valueOf(split[2]).longValue();
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    public void registerRollOverListener(AbstractC1511d abstractC1511d) {
        if (abstractC1511d != null) {
            this.rollOverListeners.add(abstractC1511d);
        }
    }

    public boolean rollFileOver() {
        String str;
        boolean z = true;
        if (!this.eventStorage.mo3386b()) {
            str = generateUniqueRollOverFileName();
            this.eventStorage.mo3389a(str);
            C1480i.m3504a(this.context, 4, "Fabric", String.format(Locale.US, "generated new file %s", str));
            this.lastRollOverTime = this.currentTimeProvider.mo3399a();
        } else {
            str = null;
            z = false;
        }
        triggerRollOverOnListeners(str);
        return z;
    }

    public void writeEvent(T t) {
        byte[] bytes = this.transform.toBytes(t);
        rollFileOverIfNeeded(bytes.length);
        this.eventStorage.mo3387a(bytes);
    }
}
