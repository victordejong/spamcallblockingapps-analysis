package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4616d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4617e;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.mopub.common.AdType;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
/* renamed from: com.bytedance.sdk.openadsdk.core.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h.class */
public class C4581h {

    /* renamed from: a */
    private final Context f16688a;

    /* renamed from: b */
    private final C4557i f16689b;

    /* renamed from: c */
    private AbstractC3234c f16690c;

    /* renamed from: d */
    private C4617e f16691d;

    /* renamed from: e */
    private C4616d f16692e;

    /* renamed from: f */
    private View f16693f;

    /* renamed from: g */
    private String f16694g;

    public C4581h(Context context, C4557i c4557i, View view) {
        this.f16694g = AdType.REWARDED_VIDEO;
        this.f16689b = c4557i;
        this.f16688a = context;
        this.f16693f = view;
        this.f16694g = C5438af.m32294b(C5438af.m32284c(c4557i.m35228S()));
        if (c4557i.m35243D() == 4) {
            this.f16690c = C3235d.m39089a(context, c4557i, this.f16694g);
        }
        String str = this.f16694g;
        C4617e c4617e = new C4617e(context, c4557i, str, C5438af.m32300a(str));
        this.f16691d = c4617e;
        c4617e.m35481a(this.f16693f);
        this.f16691d.m35480a(this.f16690c);
        String str2 = this.f16694g;
        C4616d c4616d = new C4616d(context, c4557i, str2, C5438af.m32300a(str2));
        this.f16692e = c4616d;
        c4616d.m35481a(this.f16693f);
        this.f16692e.m35480a(this.f16690c);
    }

    /* renamed from: a */
    public void m34964a(int i, C4553g c4553g) {
        C4616d c4616d;
        if (i == -1 || c4553g == null) {
            return;
        }
        int i2 = c4553g.f16505a;
        int i3 = c4553g.f16506b;
        int i4 = c4553g.f16507c;
        int i5 = c4553g.f16508d;
        if (i != 1) {
            if (i != 2 || (c4616d = this.f16692e) == null) {
                return;
            }
            c4616d.m34730a(c4553g);
            this.f16692e.mo35468a(this.f16693f, i2, i3, i4, i5);
            return;
        }
        C4617e c4617e = this.f16691d;
        if (c4617e == null) {
            return;
        }
        c4617e.m34728a(c4553g);
        this.f16691d.mo35468a(this.f16693f, i2, i3, i4, i5);
    }
}
