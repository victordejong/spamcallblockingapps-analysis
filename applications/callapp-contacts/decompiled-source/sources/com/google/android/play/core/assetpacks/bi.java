package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.bl;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.x;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;
import com.google.android.play.core.tasks.p;
import com.google.android.play.core.tasks.s;
import com.sinch.verification.core.verification.VerificationLanguage;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bi.class */
public final class bi implements cs {

    /* renamed from: a  reason: collision with root package name */
    static final h f31172a = new h("FakeAssetPackService");
    private static final AtomicInteger i = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    final t f31173b;

    /* renamed from: c  reason: collision with root package name */
    final Context f31174c;

    /* renamed from: d  reason: collision with root package name */
    final bu f31175d;
    final Handler e = new Handler(Looper.getMainLooper());
    private final String f;
    private final ap g;
    private final ba<Executor> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(File file, t tVar, ap apVar, Context context, bu buVar, ba<Executor> baVar) {
        this.f = file.getAbsolutePath();
        this.f31173b = tVar;
        this.g = apVar;
        this.f31174c = context;
        this.f31175d = buVar;
        this.h = baVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(int i2, long j) {
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(File file) throws LocalTestingException {
        try {
            return bj.a(Arrays.asList(file));
        } catch (IOException e) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e2);
        }
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final d<List<String>> a(Map<String, Long> map) {
        f31172a.c("syncPacks()", new Object[0]);
        return f.a(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a() {
        f31172a.c("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(int i2) {
        f31172a.c("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(final int i2, final String str) {
        f31172a.c("notifyModuleCompleted", new Object[0]);
        this.h.a().execute(new Runnable(this, i2, str) { // from class: com.google.android.play.core.assetpacks.bf

            /* renamed from: a  reason: collision with root package name */
            private final bi f31166a;

            /* renamed from: b  reason: collision with root package name */
            private final int f31167b;

            /* renamed from: c  reason: collision with root package name */
            private final String f31168c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31166a = this;
                this.f31167b = i2;
                this.f31168c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final bi biVar = this.f31166a;
                int i3 = this.f31167b;
                String str2 = this.f31168c;
                try {
                    Bundle bundle = new Bundle();
                    bundle.putInt("app_version_code", biVar.f31175d.a());
                    bundle.putInt("session_id", i3);
                    File[] a2 = biVar.a(str2);
                    ArrayList<String> arrayList = new ArrayList<>();
                    long j = 0;
                    for (File file : a2) {
                        j += file.length();
                        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                        arrayList2.add(null);
                        String a3 = x.a(file);
                        bundle.putParcelableArrayList(bl.a("chunk_intents", str2, a3), arrayList2);
                        bundle.putString(bl.a("uncompressed_hash_sha256", str2, a3), bi.a(file));
                        bundle.putLong(bl.a("uncompressed_size", str2, a3), file.length());
                        arrayList.add(a3);
                    }
                    bundle.putStringArrayList(bl.a("slice_ids", str2), arrayList);
                    bundle.putLong(bl.a("pack_version", str2), biVar.f31175d.a());
                    bundle.putInt(bl.a("status", str2), 4);
                    bundle.putInt(bl.a("error_code", str2), 0);
                    bundle.putLong(bl.a("bytes_downloaded", str2), bi.a(4, j));
                    bundle.putLong(bl.a("total_bytes_to_download", str2), j);
                    bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str2)));
                    bundle.putLong("bytes_downloaded", bi.a(4, j));
                    bundle.putLong("total_bytes_to_download", j);
                    final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
                    biVar.e.post(new Runnable(biVar, putExtra) { // from class: com.google.android.play.core.assetpacks.bh

                        /* renamed from: a  reason: collision with root package name */
                        private final bi f31170a;

                        /* renamed from: b  reason: collision with root package name */
                        private final Intent f31171b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f31170a = biVar;
                            this.f31171b = putExtra;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            bi biVar2 = this.f31170a;
                            biVar2.f31173b.a(biVar2.f31174c, this.f31171b);
                        }
                    });
                } catch (LocalTestingException e) {
                    bi.f31172a.d("notifyModuleCompleted failed", e);
                }
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(int i2, String str, String str2, int i3) {
        f31172a.c("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(List<String> list) {
        f31172a.c("cancelDownload(%s)", list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File[] a(final String str) throws LocalTestingException {
        File file = new File(this.f);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter(str) { // from class: com.google.android.play.core.assetpacks.bg

                /* renamed from: a  reason: collision with root package name */
                private final String f31169a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31169a = str;
                }

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(this.f31169a).concat(VerificationLanguage.REGION_PREFIX)) && str2.endsWith(".apk");
                }
            });
            if (listFiles != null) {
                if (listFiles.length != 0) {
                    for (File file2 : listFiles) {
                        if (x.a(file2).equals(str)) {
                            return listFiles;
                        }
                    }
                    throw new LocalTestingException(String.format("No master slice available for pack '%s'.", str));
                }
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final d<ParcelFileDescriptor> b(int i2, String str, String str2, int i3) {
        File[] a2;
        int i4;
        f31172a.c("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i2), str, str2, Integer.valueOf(i3));
        p pVar = new p();
        try {
        } catch (LocalTestingException e) {
            f31172a.d("getChunkFileDescriptor failed", e);
            pVar.a((Exception) e);
        } catch (FileNotFoundException e2) {
            f31172a.d("getChunkFileDescriptor failed", e2);
            pVar.a((Exception) new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : a(str)) {
            if (x.a(file).equals(str2)) {
                pVar.f31578a.a((s<ResultT>) ParcelFileDescriptor.open(file, 268435456));
                return pVar.f31578a;
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }
}
