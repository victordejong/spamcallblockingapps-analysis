package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.BinderC2331r;
import com.google.android.gms.ads.internal.overlay.BinderC2332s;
import com.google.android.gms.ads.internal.overlay.BinderC2334u;
import com.google.android.gms.ads.internal.overlay.BinderC2337x;
import com.google.android.gms.ads.internal.overlay.BinderC2339z;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC2849by;
import com.google.android.gms.internal.ads.AbstractC2858cg;
import com.google.android.gms.internal.ads.AbstractC3280ko;
import com.google.android.gms.internal.ads.AbstractC3371ny;
import com.google.android.gms.internal.ads.AbstractC3383oj;
import com.google.android.gms.internal.ads.AbstractC3452qy;
import com.google.android.gms.internal.ads.AbstractC3475ru;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.afh;
import com.google.android.gms.internal.ads.azq;
import com.google.android.gms.internal.ads.azt;
import com.google.android.gms.internal.ads.bsv;
import com.google.android.gms.internal.ads.bsx;
import com.google.android.gms.internal.ads.btg;
import com.google.android.gms.internal.ads.dyd;
import com.google.android.gms.internal.ads.dzg;
import com.google.android.gms.internal.ads.dzn;
import com.google.android.gms.internal.ads.eaa;
import com.google.android.gms.internal.ads.eae;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends eaa {
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC2849by mo8122a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2) {
        return new azt((FrameLayout) BinderC2734b.m13795a(abstractC2731a), (FrameLayout) BinderC2734b.m13795a(abstractC2731a2), 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC2858cg mo8121a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        return new azq((View) BinderC2734b.m13795a(abstractC2731a), (HashMap) BinderC2734b.m13795a(abstractC2731a2), (HashMap) BinderC2734b.m13795a(abstractC2731a3));
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzg mo8117a(AbstractC2731a abstractC2731a, String str, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return new bsv(afh.m13408a(context, abstractC3280ko, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzn mo8120a(AbstractC2731a abstractC2731a, dyd dydVar, String str, int i) {
        return new BinderC2310l((Context) BinderC2734b.m13795a(abstractC2731a), dydVar, str, new C3647yd(201004000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzn mo8119a(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return new bsx(afh.m13408a(context, abstractC3280ko, i), context, dydVar, str);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final eae mo8123a(AbstractC2731a abstractC2731a, int i) {
        return afh.m13409a((Context) BinderC2734b.m13795a(abstractC2731a), i).mo13361g();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC3371ny mo8124a(AbstractC2731a abstractC2731a) {
        AbstractC3371ny binderC2339z;
        Activity activity = (Activity) BinderC2734b.m13795a(abstractC2731a);
        AdOverlayInfoParcel m14771a = AdOverlayInfoParcel.m14771a(activity.getIntent());
        if (m14771a != null) {
            switch (m14771a.f6683k) {
                case 1:
                    binderC2339z = new BinderC2332s(activity);
                    break;
                case 2:
                    binderC2339z = new BinderC2337x(activity);
                    break;
                case 3:
                    binderC2339z = new BinderC2339z(activity);
                    break;
                case 4:
                    binderC2339z = new BinderC2334u(activity, m14771a);
                    break;
                default:
                    binderC2339z = new BinderC2331r(activity);
                    break;
            }
        } else {
            binderC2339z = new BinderC2331r(activity);
        }
        return binderC2339z;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC3452qy mo8118a(AbstractC2731a abstractC2731a, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return afh.m13408a(context, abstractC3280ko, i).mo13347n().mo11381a(context).mo11382a().mo11379a();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final dzn mo8115b(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return new btg(afh.m13408a(context, abstractC3280ko, i), context, dydVar, str);
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final eae mo8116b(AbstractC2731a abstractC2731a) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final AbstractC3475ru mo8114b(AbstractC2731a abstractC2731a, String str, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return afh.m13408a(context, abstractC3280ko, i).mo13347n().mo11381a(context).mo11380a(str).mo11382a().mo11378b();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: c */
    public final dzn mo8112c(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        return afh.m13408a(context, abstractC3280ko, i).mo13355j().mo11445a(str).mo11446a(context).mo11447a().mo11455a();
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: c */
    public final AbstractC3383oj mo8113c(AbstractC2731a abstractC2731a) {
        return null;
    }
}
