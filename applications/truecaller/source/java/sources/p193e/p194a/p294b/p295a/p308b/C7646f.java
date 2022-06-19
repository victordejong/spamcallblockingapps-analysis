package p193e.p194a.p294b.p295a.p308b;

import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.components.ProfileDetailView;
import p193e.p194a.p294b.p355m.C8079k1;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.b.a.b.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/f.class */
public final class C7646f extends m implements a<C8079k1> {

    /* renamed from: b */
    public final /* synthetic */ ProfileDetailView f24018b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7646f(ProfileDetailView profileDetailView) {
        super(0);
        this.f24018b = profileDetailView;
    }

    public Object invoke() {
        ProfileDetailView profileDetailView = this.f24018b;
        int i = C3478R.C3480id.cta;
        AppCompatImageView appCompatImageView = (AppCompatImageView) profileDetailView.findViewById(i);
        if (appCompatImageView != null) {
            i = C3478R.C3480id.icon;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) profileDetailView.findViewById(i);
            if (appCompatImageView2 != null) {
                i = C3478R.C3480id.subtitle;
                TextView textView = (TextView) profileDetailView.findViewById(i);
                if (textView != null) {
                    i = C3478R.C3480id.title;
                    TextView textView2 = (TextView) profileDetailView.findViewById(i);
                    if (textView2 != null) {
                        return new C8079k1(profileDetailView, appCompatImageView, appCompatImageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(profileDetailView.getResources().getResourceName(i)));
    }
}
