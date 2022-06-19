package p193e.p194a.p1275v.p1276a.p1301x;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import kotlin.Metadata;
import p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h;
import p193e.p194a.p1275v.p1304k.C20897d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Le/a/v/a/x/b;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setTitle", "(I)V", RemoteMessageConst.Notification.ICON, "setIcon", RemoteMessageConst.Notification.COLOR, "setTextColor", "Le/a/v/a/r0/h;", "painter", "setIconPainter", "(Le/a/v/a/r0/h;)V", "Landroid/view/View$OnClickListener;", "onClickListener", "setOnClickedListener", "(Landroid/view/View$OnClickListener;)V", "", "alpha", "setTextAlpha", "(F)V", "setBorderAlpha", RemoteMessageConst.Notification.TAG, "setIconTag", "(Ljava/lang/Integer;)V", "Le/a/v/k/d;", "t", "Le/a/v/k/d;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.x.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/x/b.class */
public final class C20864b extends ConstraintLayout {

    /* renamed from: t */
    public final C20897d f58641t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20864b(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, int r11) {
        /*
            r6 = this;
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r9 = r0
        L9:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L14
            r0 = 0
            r10 = r0
        L14:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            r0 = r7
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.details_view.C3857R.layout.layout_action_button
            r2 = r6
            android.view.View r0 = r0.inflate(r1, r2)
            int r0 = com.truecaller.details_view.C3857R.C3859id.icon
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.common.ui.imageview.GoldShineImageView r0 = (com.truecaller.common.p156ui.imageview.GoldShineImageView) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L68
            int r0 = com.truecaller.details_view.C3857R.C3859id.text
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L68
            e.a.v.k.d r0 = new e.a.v.k.d
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = r8
            r1.<init>(r2, r3, r4)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "LayoutActionButtonBindin…ater.from(context), this)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r7
            r0.f58641t = r1
            return
        L68:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "Missing required view with ID: "
            r3 = r6
            android.content.res.Resources r3 = r3.getResources()
            r4 = r9
            java.lang.String r3 = r3.getResourceName(r4)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1301x.C20864b.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    public final void setBorderAlpha(float f) {
        GoldShineImageView goldShineImageView = this.f58641t.f58763b;
        l.d(goldShineImageView, "binding.icon");
        Drawable background = goldShineImageView.getBackground();
        l.d(background, "binding.icon.background");
        background.setAlpha((int) (f * 255));
    }

    public final void setIcon(int i) {
        this.f58641t.f58763b.setImageResource(i);
    }

    public final void setIconPainter(AbstractC20845h abstractC20845h) {
        l.e(abstractC20845h, "painter");
        GoldShineImageView goldShineImageView = this.f58641t.f58763b;
        l.d(goldShineImageView, "binding.icon");
        abstractC20845h.mo10630a(goldShineImageView);
    }

    public final void setIconTag(Integer num) {
        GoldShineImageView goldShineImageView = this.f58641t.f58763b;
        l.d(goldShineImageView, "binding.icon");
        goldShineImageView.setTag(num);
    }

    public final void setOnClickedListener(View.OnClickListener onClickListener) {
        l.e(onClickListener, "onClickListener");
        this.f58641t.f58763b.setOnClickListener(onClickListener);
    }

    public final void setTextAlpha(float f) {
        TextView textView = this.f58641t.f58764c;
        l.d(textView, "binding.text");
        textView.setAlpha(f);
    }

    public final void setTextColor(int i) {
        this.f58641t.f58764c.setTextColor(i);
    }

    public final void setTitle(int i) {
        this.f58641t.f58764c.setText(i);
    }
}
