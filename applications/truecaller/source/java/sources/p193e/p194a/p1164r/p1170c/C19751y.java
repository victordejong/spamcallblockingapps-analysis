package p193e.p194a.p1164r.p1170c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.constant.WebViewContainerType;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p194a.p372b0.p373a.AbstractC8323p;
import s1.z.c.l;
/* renamed from: e.a.r.c.y */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/y.class */
public final class C19751y {

    /* renamed from: a */
    public final C19747s f54794a;

    /* renamed from: b */
    public final a<AbstractC8323p> f54795b;

    /* renamed from: c */
    public final Context f54796c;

    @Inject
    public C19751y(C19747s c19747s, a<AbstractC8323p> aVar, Context context) {
        l.e(c19747s, "wizardCustomTabsHelper");
        l.e(aVar, "webViewContainerHelper");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f54794a = c19747s;
        this.f54795b = aVar;
        this.f54796c = context;
    }

    /* renamed from: a */
    public void m12914a(AbstractC26992b0 abstractC26992b0, String str) {
        l.e(abstractC26992b0, "lifecycleOwner");
        l.e(str, "url");
        try {
            this.f54794a.m12916a(this.f54796c, str);
        } catch (ActivityNotFoundException e) {
            ((AbstractC8323p) this.f54795b.get()).mo28677a(this.f54796c, abstractC26992b0, ((AbstractC8323p) this.f54795b.get()).mo28676b(str, WebViewContainerType.FULLSCREEN_DIALOG));
        }
    }
}
