package p134j4;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.common.LocalTestingException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p124i4.C3102d;
import p189o4.AbstractC3879p;
import p201p6.C4018c;
import p220r4.C4206o;
/* renamed from: j4.h1 */
/* loaded from: classes-dex2jar.jar:j4/h1.class */
public final class C3211h1 implements AbstractC3228l2 {

    /* renamed from: g */
    public static final C4018c f10814g = new C4018c("FakeAssetPackService");

    /* renamed from: a */
    public final String f10815a;

    /* renamed from: b */
    public final C3250t f10816b;

    /* renamed from: c */
    public final Context f10817c;

    /* renamed from: d */
    public final C3252t1 f10818d;

    /* renamed from: e */
    public final AbstractC3879p f10819e;

    /* renamed from: f */
    public final Handler f10820f = new Handler(Looper.getMainLooper());

    static {
        new AtomicInteger(1);
    }

    public C3211h1(File file, C3250t c3250t, C3245r0 c3245r0, Context context, C3252t1 c3252t1, AbstractC3879p abstractC3879p, C3246r1 c3246r1) {
        this.f10815a = file.getAbsolutePath();
        this.f10816b = c3250t;
        this.f10817c = context;
        this.f10818d = c3252t1;
        this.f10819e = abstractC3879p;
    }

    /* renamed from: f */
    public static long m2543f(int i, long j) {
        if (i != 2) {
            if (i != 3 && i != 4) {
                return 0L;
            }
            return j;
        }
        return j / 2;
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: a */
    public final void mo2525a(int i, String str, String str2, int i2) {
        f10814g.m1507e("notifyChunkTransferred", new Object[0]);
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: b */
    public final void mo2524b(final int i, final String str) {
        f10814g.m1507e("notifyModuleCompleted", new Object[0]);
        ((Executor) this.f10819e.zza()).execute(new Runnable() { // from class: j4.f1
            @Override // java.lang.Runnable
            public final void run() {
                C3211h1 c3211h1 = C3211h1.this;
                int i2 = i;
                String str2 = str;
                Objects.requireNonNull(c3211h1);
                try {
                    c3211h1.m2542g(i2, str2, 4);
                } catch (LocalTestingException e) {
                    C3211h1.f10814g.m1506f("notifyModuleCompleted failed", e);
                }
            }
        });
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: c */
    public final C4206o mo2523c(Map map) {
        f10814g.m1507e("syncPacks()", new Object[0]);
        ArrayList arrayList = new ArrayList();
        C4206o c4206o = new C4206o();
        c4206o.m1288e(arrayList);
        return c4206o;
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: d */
    public final C4206o mo2522d(int i, String str, String str2, int i2) {
        File[] m2541h;
        int i3;
        f10814g.m1507e("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i), str, str2, Integer.valueOf(i2));
        C4206o c4206o = new C4206o();
        try {
        } catch (LocalTestingException e) {
            f10814g.m1506f("getChunkFileDescriptor failed", e);
            c4206o.m1289d(e);
        } catch (FileNotFoundException e2) {
            f10814g.m1506f("getChunkFileDescriptor failed", e2);
            c4206o.m1289d(new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : m2541h(str)) {
            if (C3102d.m2641K(file).equals(str2)) {
                c4206o.m1288e(ParcelFileDescriptor.open(file, 268435456));
                return c4206o;
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: e */
    public final void mo2521e(List list) {
        f10814g.m1507e("cancelDownload(%s)", list);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: g */
    public final Bundle m2542g(int i, String str, int i2) throws LocalTestingException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.f10818d.m2504a());
        bundle.putInt("session_id", i);
        File[] m2541h = m2541h(str);
        ArrayList<String> arrayList = new ArrayList<>();
        char c = 0;
        for (File file : m2541h) {
            c += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i2 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String m2641K = C3102d.m2641K(file);
            bundle.putParcelableArrayList(C3102d.m2639M("chunk_intents", str, m2641K), arrayList2);
            try {
                bundle.putString(C3102d.m2639M("uncompressed_hash_sha256", str, m2641K), C3219j1.m2539a(Arrays.asList(file)));
                bundle.putLong(C3102d.m2639M("uncompressed_size", str, m2641K), file.length());
                arrayList.add(m2641K);
            } catch (IOException e) {
                throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
            } catch (NoSuchAlgorithmException e2) {
                throw new LocalTestingException("SHA256 algorithm not supported.", e2);
            }
        }
        bundle.putStringArrayList(C3102d.m2640L("slice_ids", str), arrayList);
        bundle.putLong(C3102d.m2640L("pack_version", str), this.f10818d.m2504a());
        bundle.putInt(C3102d.m2640L("status", str), i2);
        bundle.putInt(C3102d.m2640L("error_code", str), 0);
        bundle.putLong(C3102d.m2640L("bytes_downloaded", str), m2543f(i2, c));
        bundle.putLong(C3102d.m2640L("total_bytes_to_download", str), c);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", m2543f(i2, c));
        bundle.putLong("total_bytes_to_download", c);
        final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
        this.f10820f.post(new Runnable() { // from class: j4.g1
            @Override // java.lang.Runnable
            public final void run() {
                C3211h1 c3211h1 = C3211h1.this;
                c3211h1.f10816b.mo1515a(c3211h1.f10817c, putExtra);
            }
        });
        return bundle;
    }

    /* renamed from: h */
    public final File[] m2541h(final String str) throws LocalTestingException {
        File file = new File(this.f10815a);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter() { // from class: j4.e1
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(str).concat("-")) && str2.endsWith(".apk");
                }
            });
            if (listFiles == null) {
                throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
            }
            if (listFiles.length == 0) {
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            for (File file2 : listFiles) {
                if (C3102d.m2641K(file2).equals(str)) {
                    return listFiles;
                }
            }
            throw new LocalTestingException(String.format("No main slice available for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    @Override // p134j4.AbstractC3228l2
    public final void zzf() {
        f10814g.m1507e("keepAlive", new Object[0]);
    }

    @Override // p134j4.AbstractC3228l2
    public final void zzi(int i) {
        f10814g.m1507e("notifySessionFailed", new Object[0]);
    }
}
