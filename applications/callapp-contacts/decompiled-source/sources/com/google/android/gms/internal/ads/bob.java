package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bob.class */
final class bob implements dbi<cpk> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ bnw f24786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bob(bnw bnwVar) {
        this.f24786a = bnwVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(cpk cpkVar) {
        brb brbVar;
        brb brbVar2;
        cpk cpkVar2 = cpkVar;
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue()) {
            brbVar = this.f24786a.e;
            brbVar.a(cpkVar2.f26222b.f26217b.e);
            brbVar2 = this.f24786a.e;
            long j = cpkVar2.f26222b.f26217b.f;
            synchronized (brbVar2.f24927b) {
                brbVar2.f24926a = j;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        Pattern pattern;
        brb brbVar;
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue()) {
            pattern = bnw.f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                brbVar = this.f24786a.e;
                brbVar.a(Integer.parseInt(group));
            }
        }
    }
}
