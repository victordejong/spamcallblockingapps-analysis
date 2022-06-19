package p193e.p194a.p1221t.p1230b;

import android.content.Context;
import com.truecaller.android.sdk.ITrueCallback;
import com.truecaller.android.sdk.TruecallerSdkScope;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20359d;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1221t.p1230b.p1231c.C20360e;
import p193e.p194a.p1221t.p1230b.p1231c.C20362g;
/* renamed from: e.a.t.b.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/a.class */
public class C20348a {

    /* renamed from: b */
    public static C20348a f57188b;

    /* renamed from: a */
    public AbstractC20359d f57189a;

    @Deprecated
    public C20348a(Context context, ITrueCallback iTrueCallback, String str) {
        this.f57189a = C20349b.m11232c(context) ? new C20360e(context, str, iTrueCallback) : new C20362g(context, str, iTrueCallback, false);
    }

    public C20348a(TruecallerSdkScope truecallerSdkScope) {
        boolean m11232c = C20349b.m11232c(truecallerSdkScope.context);
        C20358c c20358c = new C20358c(truecallerSdkScope.sdkFlag, truecallerSdkScope.consentTitleOption, truecallerSdkScope.customDataBundle);
        this.f57189a = m11232c ? new C20360e(truecallerSdkScope.context, truecallerSdkScope.partnerKey, truecallerSdkScope.callback, c20358c) : c20358c.m11229b(32) ? new C20362g(truecallerSdkScope.context, truecallerSdkScope.partnerKey, truecallerSdkScope.callback, false) : null;
    }
}
