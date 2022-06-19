package com.google.mlkit.p075nl.translate.internal;

import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzbu;
import com.google.android.gms.internal.mlkit_translate.zzkc;
import e.m.d.y.n;
import e.m.h.b.b.e.k;
import e.m.h.b.b.e.v;
import e.m.h.b.b.e.w;
import java.io.File;
import java.io.IOException;
/* renamed from: com.google.mlkit.nl.translate.internal.TranslateJni$d */
/* loaded from: classes3-dex2jar.jar:com/google/mlkit/nl/translate/internal/TranslateJni$d.class */
public final class TranslateJni$d {

    /* renamed from: a */
    public String f7109a;

    /* renamed from: b */
    public String f7110b;

    /* renamed from: c */
    public String f7111c;

    /* renamed from: d */
    public final /* synthetic */ TranslateJni f7112d;

    public TranslateJni$d(TranslateJni translateJni, k kVar) {
        this.f7112d = translateJni;
    }

    /* renamed from: a */
    public static String m38290a(File file) {
        if (!file.exists()) {
            return null;
        }
        return file.getPath();
    }

    /* renamed from: b */
    public final void m38289b(String str, String str2, String str3) {
        v vVar = this.f7112d.d;
        File b = vVar.d.b(w.a(str2, str3), e.m.h.a.d.k.d, false);
        String f = v.f(str2, str3);
        try {
            n.E1(b);
            v.d(b, v.a(str2, str3), vVar.b.zza(String.format("nl_translate_rapid_response_nmt_%s", f)));
            v.d(b, v.c(str2, str3), vVar.b.zza(String.format("nl_translate_rapid_response_pbmt_%s", f)));
            v.d(b, v.e(str2, str3), vVar.b.zza(String.format("nl_translate_rapid_response_stt_%s", f)));
        } catch (IOException e) {
            vVar.c.a((zzbj.zzbi) ((zzkc) zzbj.zzbi.zza().zza(str2).zzb(str3).zzh())).d(zzbj.zzbe.zzb.RAPID_RESPONSE_COULD_NOT_BE_WRITTEN, zzbu.ON_DEVICE_TRANSLATOR_LOAD);
        }
        File file = new File(str, v.a(str2, str3));
        File file2 = new File(str, v.c(str2, str3));
        File file3 = new File(str, v.e(str2, str3));
        this.f7109a = m38290a(file);
        this.f7110b = m38290a(file2);
        this.f7111c = m38290a(file3);
    }
}
