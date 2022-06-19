package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15048bl;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15088x;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15182f;
import com.google.android.play.core.tasks.C15192p;
import com.google.android.play.core.tasks.C15195s;
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
/* renamed from: com.google.android.play.core.assetpacks.bi */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bi.class */
public final class C14935bi implements AbstractC14972cs {

    /* renamed from: a */
    static final C15072h f54519a = new C15072h("FakeAssetPackService");

    /* renamed from: i */
    private static final AtomicInteger f54520i = new AtomicInteger(1);

    /* renamed from: b */
    final C14993t f54521b;

    /* renamed from: c */
    final Context f54522c;

    /* renamed from: d */
    final C14947bu f54523d;

    /* renamed from: e */
    final Handler f54524e = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private final String f54525f;

    /* renamed from: g */
    private final C14915ap f54526g;

    /* renamed from: h */
    private final AbstractC15037ba<Executor> f54527h;

    public C14935bi(File file, C14993t c14993t, C14915ap c14915ap, Context context, C14947bu c14947bu, AbstractC15037ba<Executor> abstractC15037ba) {
        this.f54525f = file.getAbsolutePath();
        this.f54521b = c14993t;
        this.f54526g = c14915ap;
        this.f54522c = context;
        this.f54523d = c14947bu;
        this.f54527h = abstractC15037ba;
    }

    /* renamed from: a */
    public static long m9752a(int i, long j) {
        return j;
    }

    /* renamed from: a */
    public static String m9751a(File file) throws LocalTestingException {
        try {
            return C14936bj.m9746a(Arrays.asList(file));
        } catch (IOException e) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e2);
        }
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final AbstractC15180d<List<String>> mo9686a(Map<String, Long> map) {
        f54519a.m9508c("syncPacks()", new Object[0]);
        return C15182f.m9328a(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9696a() {
        f54519a.m9508c("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9695a(int i) {
        f54519a.m9508c("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9694a(int i, String str) {
        f54519a.m9508c("notifyModuleCompleted", new Object[0]);
        this.f54527h.mo9335a().execute(new Runnable(this, i, str) { // from class: com.google.android.play.core.assetpacks.bf

            /* renamed from: a */
            private final C14935bi f54513a;

            /* renamed from: b */
            private final int f54514b;

            /* renamed from: c */
            private final String f54515c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54513a = this;
                this.f54514b = i;
                this.f54515c = str;
            }

            /* JADX WARN: Type inference failed for: r0v44, types: [long] */
            @Override // java.lang.Runnable
            public final void run() {
                final C14935bi c14935bi = this.f54513a;
                int i2 = this.f54514b;
                String str2 = this.f54515c;
                try {
                    Bundle bundle = new Bundle();
                    bundle.putInt("app_version_code", c14935bi.f54523d.m9734a());
                    bundle.putInt("session_id", i2);
                    File[] m9750a = c14935bi.m9750a(str2);
                    ArrayList<String> arrayList = new ArrayList<>();
                    char c = 0;
                    for (File file : m9750a) {
                        c += file.length();
                        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                        arrayList2.add(null);
                        String m9481a = C15088x.m9481a(file);
                        bundle.putParcelableArrayList(C15048bl.m9564a("chunk_intents", str2, m9481a), arrayList2);
                        bundle.putString(C15048bl.m9564a("uncompressed_hash_sha256", str2, m9481a), C14935bi.m9751a(file));
                        bundle.putLong(C15048bl.m9564a("uncompressed_size", str2, m9481a), file.length());
                        arrayList.add(m9481a);
                    }
                    bundle.putStringArrayList(C15048bl.m9565a("slice_ids", str2), arrayList);
                    bundle.putLong(C15048bl.m9565a("pack_version", str2), c14935bi.f54523d.m9734a());
                    bundle.putInt(C15048bl.m9565a("status", str2), 4);
                    bundle.putInt(C15048bl.m9565a("error_code", str2), 0);
                    bundle.putLong(C15048bl.m9565a("bytes_downloaded", str2), C14935bi.m9752a(4, c));
                    bundle.putLong(C15048bl.m9565a("total_bytes_to_download", str2), c);
                    bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str2)));
                    bundle.putLong("bytes_downloaded", C14935bi.m9752a(4, c));
                    bundle.putLong("total_bytes_to_download", c);
                    final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
                    c14935bi.f54524e.post(new Runnable(c14935bi, putExtra) { // from class: com.google.android.play.core.assetpacks.bh

                        /* renamed from: a */
                        private final C14935bi f54517a;

                        /* renamed from: b */
                        private final Intent f54518b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f54517a = c14935bi;
                            this.f54518b = putExtra;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C14935bi c14935bi2 = this.f54517a;
                            c14935bi2.f54521b.mo9393a(c14935bi2.f54522c, this.f54518b);
                        }
                    });
                } catch (LocalTestingException e) {
                    C14935bi.f54519a.m9507d("notifyModuleCompleted failed", e);
                }
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9692a(int i, String str, String str2, int i2) {
        f54519a.m9508c("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9687a(List<String> list) {
        f54519a.m9508c("cancelDownload(%s)", list);
    }

    /* renamed from: a */
    public final File[] m9750a(String str) throws LocalTestingException {
        File file = new File(this.f54525f);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter(str) { // from class: com.google.android.play.core.assetpacks.bg

                /* renamed from: a */
                private final String f54516a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f54516a = str;
                }

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(this.f54516a).concat(VerificationLanguage.REGION_PREFIX)) && str2.endsWith(".apk");
                }
            });
            if (listFiles == null) {
                throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
            }
            if (listFiles.length == 0) {
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            for (File file2 : listFiles) {
                if (C15088x.m9481a(file2).equals(str)) {
                    return listFiles;
                }
            }
            throw new LocalTestingException(String.format("No master slice available for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: b */
    public final AbstractC15180d<ParcelFileDescriptor> mo9682b(int i, String str, String str2, int i2) {
        File[] m9750a;
        int i3;
        f54519a.m9508c("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i), str, str2, Integer.valueOf(i2));
        C15192p c15192p = new C15192p();
        try {
        } catch (LocalTestingException e) {
            f54519a.m9507d("getChunkFileDescriptor failed", e);
            c15192p.m9324a((Exception) e);
        } catch (FileNotFoundException e2) {
            f54519a.m9507d("getChunkFileDescriptor failed", e2);
            c15192p.m9324a((Exception) new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : m9750a(str)) {
            if (C15088x.m9481a(file).equals(str2)) {
                c15192p.f55025a.m9316a((C15195s<ResultT>) ParcelFileDescriptor.open(file, 268435456));
                return c15192p.f55025a;
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }
}
