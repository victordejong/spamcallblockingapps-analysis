package p193e.p194a.p1080o.p1097b.p1098a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.contextcall.C3771R;
import java.util.Objects;
import p193e.p194a.p1080o.p1102o.C18799l;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.b.a.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/b.class */
public final class C18692b extends m implements a<C18799l> {

    /* renamed from: b */
    public final /* synthetic */ C18694d f52546b;

    /* renamed from: c */
    public final /* synthetic */ Context f52547c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18692b(C18694d c18694d, Context context) {
        super(0);
        this.f52546b = c18694d;
        this.f52547c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f52547c);
        C18694d c18694d = this.f52546b;
        Objects.requireNonNull(c18694d, "parent");
        from.inflate(C3771R.layout.context_call_view_call_reason, c18694d);
        int i = C3771R.C3773id.backgroundBorder;
        View findViewById = c18694d.findViewById(i);
        if (findViewById != null) {
            i = C3771R.C3773id.checkMark;
            ImageView imageView = (ImageView) c18694d.findViewById(i);
            if (imageView != null) {
                i = C3771R.C3773id.editImageView;
                ImageView imageView2 = (ImageView) c18694d.findViewById(i);
                if (imageView2 != null) {
                    i = C3771R.C3773id.reasonHintTextView;
                    TextView textView = (TextView) c18694d.findViewById(i);
                    if (textView != null) {
                        i = C3771R.C3773id.reasonTextView;
                        TextView textView2 = (TextView) c18694d.findViewById(i);
                        if (textView2 != null) {
                            C18799l c18799l = new C18799l(c18694d, findViewById, imageView, imageView2, textView, textView2);
                            l.d(c18799l, "ContextCallViewCallReaso…ater.from(context), this)");
                            return c18799l;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(c18694d.getResources().getResourceName(i)));
    }
}
