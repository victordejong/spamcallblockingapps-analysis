package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8516t;
import com.google.android.play.core.internal.C8521v0;
import com.google.android.play.core.tasks.AbstractC8571c;
import com.google.android.play.core.tasks.C8573e;
import com.google.android.play.core.tasks.C8581m;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.play.core.assetpacks.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/g1.class */
public final class C8388g1 implements AbstractC8433r2 {

    /* renamed from: a */
    private static final C8466a f37732a = new C8466a("FakeAssetPackService");

    /* renamed from: b */
    private static final AtomicInteger f37733b = new AtomicInteger(1);

    /* renamed from: c */
    private final String f37734c;

    /* renamed from: d */
    private final C8434s f37735d;

    /* renamed from: e */
    private final C8415n0 f37736e;

    /* renamed from: f */
    private final Context f37737f;

    /* renamed from: g */
    private final C8436s1 f37738g;

    /* renamed from: h */
    private final AbstractC8509p0<Executor> f37739h;

    /* renamed from: i */
    private final Handler f37740i = new Handler(Looper.getMainLooper());

    public C8388g1(File file, C8434s c8434s, C8415n0 c8415n0, Context context, C8436s1 c8436s1, AbstractC8509p0<Executor> abstractC8509p0) {
        this.f37734c = file.getAbsolutePath();
        this.f37735d = c8434s;
        this.f37736e = c8415n0;
        this.f37737f = context;
        this.f37738g = c8436s1;
        this.f37739h = abstractC8509p0;
    }

    /* renamed from: h */
    static long m3750h(int i, long j) {
        if (i != 2) {
            if (i != 3 && i != 4) {
                return 0L;
            }
            return j;
        }
        return j / 2;
    }

    /* renamed from: k */
    private final File[] m3747k(String str) {
        File file = new File(this.f37734c);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter(str) { // from class: com.google.android.play.core.assetpacks.e1

                /* renamed from: a */
                private final String f37706a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f37706a = str;
                }

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(this.f37706a).concat("-")) && str2.endsWith(".apk");
                }
            });
            if (listFiles == null) {
                throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
            }
            if (listFiles.length == 0) {
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            for (File file2 : listFiles) {
                if (C8516t.m3469b(file2).equals(str)) {
                    return listFiles;
                }
            }
            throw new LocalTestingException(String.format("No master slice available for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    /* renamed from: l */
    private static String m3746l(File file) {
        try {
            return C8392h1.m3742a(Arrays.asList(file));
        } catch (IOException e) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: m */
    private final void m3745m(int i, String str, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.f37738g.m3675a());
        bundle.putInt("session_id", i);
        File[] m3747k = m3747k(str);
        ArrayList<String> arrayList = new ArrayList<>();
        char c = 0;
        for (File file : m3747k) {
            c += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i2 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String m3469b = C8516t.m3469b(file);
            bundle.putParcelableArrayList(C8521v0.m3455f("chunk_intents", str, m3469b), arrayList2);
            bundle.putString(C8521v0.m3455f("uncompressed_hash_sha256", str, m3469b), m3746l(file));
            bundle.putLong(C8521v0.m3455f("uncompressed_size", str, m3469b), file.length());
            arrayList.add(m3469b);
        }
        bundle.putStringArrayList(C8521v0.m3456e("slice_ids", str), arrayList);
        bundle.putLong(C8521v0.m3456e("pack_version", str), this.f37738g.m3675a());
        bundle.putInt(C8521v0.m3456e("status", str), i2);
        bundle.putInt(C8521v0.m3456e("error_code", str), 0);
        bundle.putLong(C8521v0.m3456e("bytes_downloaded", str), m3750h(i2, c));
        bundle.putLong(C8521v0.m3456e("total_bytes_to_download", str), c);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", m3750h(i2, c));
        bundle.putLong("total_bytes_to_download", c);
        this.f37740i.post(new Runnable(this, new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle)) { // from class: com.google.android.play.core.assetpacks.f1

            /* renamed from: d */
            private final C8388g1 f37712d;

            /* renamed from: e */
            private final Intent f37713e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37712d = this;
                this.f37713e = putExtra;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f37712d.m3749i(this.f37713e);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: a */
    public final void mo3685a() {
        f37732a.m3564d("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: b */
    public final void mo3684b(int i) {
        f37732a.m3564d("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: c */
    public final void mo3683c(int i, String str, String str2, int i2) {
        f37732a.m3564d("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: d */
    public final void mo3682d(int i, String str) {
        f37732a.m3564d("notifyModuleCompleted", new Object[0]);
        this.f37739h.m3482a().execute(new Runnable(this, i, str) { // from class: com.google.android.play.core.assetpacks.d1

            /* renamed from: d */
            private final C8388g1 f37696d;

            /* renamed from: e */
            private final int f37697e;

            /* renamed from: f */
            private final String f37698f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37696d = this;
                this.f37697e = i;
                this.f37698f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f37696d.m3748j(this.f37697e, this.f37698f);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: e */
    public final AbstractC8571c<ParcelFileDescriptor> mo3681e(int i, String str, String str2, int i2) {
        File[] m3747k;
        int i3;
        f37732a.m3564d("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i), str, str2, Integer.valueOf(i2));
        C8581m c8581m = new C8581m();
        try {
        } catch (LocalTestingException e) {
            f37732a.m3563e("getChunkFileDescriptor failed", e);
            c8581m.m3314b(e);
        } catch (FileNotFoundException e2) {
            f37732a.m3563e("getChunkFileDescriptor failed", e2);
            c8581m.m3314b(new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : m3747k(str)) {
            if (C8516t.m3469b(file).equals(str2)) {
                c8581m.m3315a(ParcelFileDescriptor.open(file, 268435456));
                return c8581m.m3313c();
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: f */
    public final AbstractC8571c<List<String>> mo3680f(Map<String, Long> map) {
        f37732a.m3564d("syncPacks()", new Object[0]);
        return C8573e.m3327a(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: g */
    public final void mo3679g(List<String> list) {
        f37732a.m3564d("cancelDownload(%s)", list);
    }

    /* renamed from: i */
    public final /* synthetic */ void m3749i(Intent intent) {
        this.f37735d.mo3332a(this.f37737f, intent);
    }

    /* renamed from: j */
    public final /* synthetic */ void m3748j(int i, String str) {
        try {
            m3745m(i, str, 4);
        } catch (LocalTestingException e) {
            f37732a.m3563e("notifyModuleCompleted failed", e);
        }
    }
}
