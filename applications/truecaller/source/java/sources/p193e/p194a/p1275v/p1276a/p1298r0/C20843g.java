package p193e.p194a.p1275v.p1276a.p1298r0;

import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.details_view.C3857R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p916i5.AbstractC15317d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.r0.g */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/g.class */
public final class C20843g implements AbstractC20845h {

    /* renamed from: a */
    public final g f58573a = C25225a.m3978P1(new C20844a());

    /* renamed from: b */
    public final AbstractC15317d f58574b;

    /* renamed from: c */
    public final int f58575c;

    /* renamed from: e.a.v.a.r0.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/g$a.class */
    public static final class C20844a extends m implements a<C20846i> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20844a() {
            super(0);
            C20843g.this = r4;
        }

        public Object invoke() {
            return new C20846i(C20843g.this.f58575c);
        }
    }

    public C20843g(AbstractC15317d abstractC15317d, int i) {
        l.e(abstractC15317d, "appTheme");
        this.f58574b = abstractC15317d;
        this.f58575c = i;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: a */
    public void mo10630a(ImageView imageView) {
        l.e(imageView, ViewAction.VIEW);
        GoldShineImageView goldShineImageView = (GoldShineImageView) imageView;
        if (m10631d(this.f58574b)) {
            goldShineImageView.setColorInt(this.f58575c);
        } else {
            goldShineImageView.m35656h();
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: b */
    public void mo10629b(TextView textView) {
        l.e(textView, ViewAction.VIEW);
        if (m10631d(this.f58574b)) {
            textView.setTextColor(this.f58575c);
        } else {
            ((GoldShineTextView) textView).m35618l();
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: c */
    public void mo10628c(TagXView tagXView) {
        l.e(tagXView, ViewAction.VIEW);
        tagXView.setTitleTextAppearance(C3857R.style.StyleX_Text_Overline);
        tagXView.setBackgroundResource(0);
        if (!m10631d(this.f58574b)) {
            tagXView.m35632a();
            return;
        }
        tagXView.setIconTint(this.f58575c);
        tagXView.setTitleColor(this.f58575c);
    }

    /* renamed from: d */
    public final boolean m10631d(AbstractC15317d abstractC15317d) {
        return (abstractC15317d instanceof AbstractC15317d.C15318a) || (abstractC15317d instanceof AbstractC15317d.C15320c);
    }
}
