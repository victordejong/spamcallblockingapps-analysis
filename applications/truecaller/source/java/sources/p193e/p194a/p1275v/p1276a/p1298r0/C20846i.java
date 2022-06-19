package p193e.p194a.p1275v.p1276a.p1298r0;

import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.details_view.C3857R;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.i */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/i.class */
public final class C20846i implements AbstractC20845h {

    /* renamed from: a */
    public final int f58577a;

    public C20846i(int i) {
        this.f58577a = i;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: a */
    public void mo10630a(ImageView imageView) {
        l.e(imageView, ViewAction.VIEW);
        if (imageView instanceof GoldShineImageView) {
            ((GoldShineImageView) imageView).setColorInt(this.f58577a);
        } else {
            imageView.setColorFilter(this.f58577a);
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: b */
    public void mo10629b(TextView textView) {
        l.e(textView, ViewAction.VIEW);
        textView.setTextColor(this.f58577a);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h
    /* renamed from: c */
    public void mo10628c(TagXView tagXView) {
        l.e(tagXView, ViewAction.VIEW);
        tagXView.setTitleTextAppearance(C3857R.style.StyleX_Text_Overline);
        tagXView.setBackgroundResource(0);
        tagXView.setIconTint(this.f58577a);
        tagXView.setTitleColor(this.f58577a);
    }
}
