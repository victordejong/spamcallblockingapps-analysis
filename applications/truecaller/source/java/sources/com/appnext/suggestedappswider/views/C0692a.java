package com.appnext.suggestedappswider.views;

import android.content.Context;
import com.appnext.base.C0472a;
import com.appnext.suggestedappswider.views.templates.grid_suggestedappswider_template.ANGridSuggestedAppsWiderTemplateView;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdsViewFactory;", "", "()V", "Companion", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.views.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/a.class */
public final class C0692a {

    /* renamed from: hx */
    public static final C0693a f2139hx = new C0693a(null);

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdsViewFactory$Companion;", "", "()V", "getANCollectionViewByTemplate", "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "template", "", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.views.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/a$a.class */
    public static final class C0693a {
        private C0693a() {
        }

        public /* synthetic */ C0693a(f fVar) {
            this();
        }

        /* renamed from: a */
        public static ANSuggestedAppsWiderAdView m42099a(Context context, int i) {
            ANGridSuggestedAppsWiderTemplateView aNGridSuggestedAppsWiderTemplateView;
            l.e(context, AnalyticsConstants.CONTEXT);
            try {
                aNGridSuggestedAppsWiderTemplateView = new ANGridSuggestedAppsWiderTemplateView(context);
            } catch (Throwable th) {
                C0472a.m42577a("ANSuggestedAppsWiderAdsViewFactory$getANCollectionViewByTemplate", th);
                aNGridSuggestedAppsWiderTemplateView = null;
            }
            return aNGridSuggestedAppsWiderTemplateView;
        }
    }
}
