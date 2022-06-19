package p000;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: g3 */
/* loaded from: classes6-dex2jar.jar:g3.class */
public final class C25278g3 extends m implements l<View, s> {

    /* renamed from: b */
    public final /* synthetic */ int f70713b;

    /* renamed from: c */
    public final /* synthetic */ Object f70714c;

    /* renamed from: d */
    public final /* synthetic */ Object f70715d;

    /* renamed from: e */
    public final /* synthetic */ Object f70716e;

    /* renamed from: f */
    public final /* synthetic */ Object f70717f;

    /* renamed from: g */
    public final /* synthetic */ Object f70718g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25278g3(int i, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        super(1);
        this.f70713b = i;
        this.f70714c = obj;
        this.f70715d = obj2;
        this.f70716e = obj3;
        this.f70717f = obj4;
        this.f70718g = obj5;
    }

    /* renamed from: d */
    public final Object m3723d(Object obj) {
        s sVar = s.a;
        int i = this.f70713b;
        if (i == 0) {
            s1.z.c.l.e((View) obj, "it");
            AbstractC18905m abstractC18905m = (AbstractC18905m) this.f70715d;
            String str = (String) this.f70716e;
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) this.f70717f;
            BannerViewX bannerViewX = (BannerViewX) this.f70714c;
            s1.z.c.l.d(bannerViewX, "this");
            abstractC18905m.mo14327t(new C18900h(str, abstractC0313c0, bannerViewX, (Object) null, 8));
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            s1.z.c.l.e((View) obj, "it");
            AbstractC18905m abstractC18905m2 = (AbstractC18905m) this.f70715d;
            String str2 = (String) this.f70718g;
            RecyclerView.AbstractC0313c0 abstractC0313c02 = (RecyclerView.AbstractC0313c0) this.f70717f;
            BannerViewX bannerViewX2 = (BannerViewX) this.f70714c;
            s1.z.c.l.d(bannerViewX2, "this");
            abstractC18905m2.mo14327t(new C18900h(str2, abstractC0313c02, bannerViewX2, (Object) null, 8));
            return sVar;
        }
    }
}
