package p193e.p194a.p195a.p200c.p206i;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.truecaller.C2752R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18180q;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import s1.a.l;
import s1.s;
import s1.z.c.m;
/* renamed from: e.a.a.c.i.m */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/m.class */
public final class C5364m extends RecyclerView.AbstractC0313c0 implements AbstractC5359i {

    /* renamed from: b */
    public static final /* synthetic */ l[] f18336b = {C22128a.m8621g0(C5364m.class, "binding", "getBinding()Lcom/truecaller/databinding/CallsHistoryBottomSheetItemBinding;", 0)};

    /* renamed from: a */
    public final C19351b f18337a = new C19351b(new C5365a());

    /* renamed from: e.a.a.c.i.m$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/m$a.class */
    public static final class C5365a extends m implements s1.z.b.l<C5364m, C18180q> {
        public C5365a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33246d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = 2131362602;
            AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(C2752R.C2754id.callDate);
            if (appCompatTextView != null) {
                i = 2131362603;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(C2752R.C2754id.callDuration);
                if (appCompatTextView2 != null) {
                    i = 2131362605;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(C2752R.C2754id.callIcon);
                    if (appCompatImageView != null) {
                        i = 2131362620;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) view.findViewById(C2752R.C2754id.callRemove);
                        if (appCompatImageView2 != null) {
                            i = 2131362627;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) view.findViewById(C2752R.C2754id.callType);
                            if (appCompatTextView3 != null) {
                                i = 2131365905;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) view.findViewById(C2752R.C2754id.simIcon);
                                if (appCompatImageView3 != null) {
                                    return new C18180q((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatImageView, appCompatImageView2, appCompatTextView3, appCompatImageView3);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.i.m$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/m$b.class */
    public static final class View$OnClickListenerC5366b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ s1.z.b.l f18339b;

        public View$OnClickListenerC5366b(s1.z.b.l lVar) {
            C5364m.this = r4;
            this.f18339b = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f18339b.d(Integer.valueOf(C5364m.this.getAdapterPosition()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5364m(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
    }

    /* renamed from: N4 */
    public final C18180q m33252N4() {
        return (C18180q) this.f18337a.m13418a(this, f18336b[0]);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    /* renamed from: O3 */
    public void mo33251O3(Drawable drawable) {
        AppCompatImageView appCompatImageView = m33252N4().f51397f;
        appCompatImageView.setImageDrawable(drawable);
        C19286f.m13683U(appCompatImageView, drawable != null);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    /* renamed from: V1 */
    public void mo33250V1(String str) {
        s1.z.c.l.e(str, "type");
        AppCompatTextView appCompatTextView = m33252N4().f51396e;
        s1.z.c.l.d(appCompatTextView, "binding.callType");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    /* renamed from: W */
    public void mo33249W(String str) {
        s1.z.c.l.e(str, VastIconXmlManager.DURATION);
        AppCompatTextView appCompatTextView = m33252N4().f51393b;
        s1.z.c.l.d(appCompatTextView, "binding.callDuration");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    /* renamed from: o0 */
    public void mo33248o0(String str) {
        s1.z.c.l.e(str, "date");
        AppCompatTextView appCompatTextView = m33252N4().f51392a;
        s1.z.c.l.d(appCompatTextView, "binding.callDate");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    public void setIcon(Drawable drawable) {
        s1.z.c.l.e(drawable, RemoteMessageConst.Notification.ICON);
        m33252N4().f51394c.setImageDrawable(drawable);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5359i
    /* renamed from: v0 */
    public void mo33247v0(s1.z.b.l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        m33252N4().f51395d.setOnClickListener(new View$OnClickListenerC5366b(lVar));
    }
}
