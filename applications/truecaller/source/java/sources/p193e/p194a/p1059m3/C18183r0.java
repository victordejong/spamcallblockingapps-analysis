package p193e.p194a.p1059m3;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.m3.r0 */
/* loaded from: classes8-dex2jar.jar:e/a/m3/r0.class */
public final class C18183r0 implements AbstractC26410a {

    /* renamed from: a */
    public final AvatarXView f51403a;

    /* renamed from: b */
    public final TextView f51404b;

    /* renamed from: c */
    public final ImageView f51405c;

    public C18183r0(ConstraintLayout constraintLayout, AvatarXView avatarXView, TextView textView, ImageView imageView) {
        this.f51403a = avatarXView;
        this.f51404b = textView;
        this.f51405c = imageView;
    }

    /* renamed from: a */
    public static C18183r0 m15458a(View view) {
        int i = 2131362231;
        AvatarXView avatarXView = (AvatarXView) view.findViewById(2131362231);
        if (avatarXView != null) {
            i = 2131364880;
            TextView textView = (TextView) view.findViewById(C2752R.C2754id.nameText);
            if (textView != null) {
                i = 2131365397;
                ImageView imageView = (ImageView) view.findViewById(2131365397);
                if (imageView != null) {
                    return new C18183r0((ConstraintLayout) view, avatarXView, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
