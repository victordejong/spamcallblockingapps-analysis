package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bob.class */
final class bob implements dbi<cpk> {

    /* renamed from: a */
    private final /* synthetic */ bnw f44371a;

    public bob(bnw bnwVar) {
        this.f44371a = bnwVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(cpk cpkVar) {
        brb brbVar;
        brb brbVar2;
        cpk cpkVar2 = cpkVar;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue()) {
            brbVar = this.f44371a.f44359e;
            brbVar.m17656a(cpkVar2.f46319b.f46314b.f46293e);
            brbVar2 = this.f44371a.f44359e;
            long j = cpkVar2.f46319b.f46314b.f46294f;
            synchronized (brbVar2.f44530b) {
                brbVar2.f44529a = j;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        Pattern pattern;
        brb brbVar;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue()) {
            pattern = bnw.f44354f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (!matcher.matches()) {
                return;
            }
            String group = matcher.group(1);
            brbVar = this.f44371a.f44359e;
            brbVar.m17656a(Integer.parseInt(group));
        }
    }
}
