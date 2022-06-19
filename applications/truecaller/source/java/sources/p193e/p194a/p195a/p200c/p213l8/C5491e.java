package p193e.p194a.p195a.p200c.p213l8;

import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18182r;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.l8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/e.class */
public final class C5491e extends RecyclerView.AbstractC0313c0 {

    /* renamed from: b */
    public static final /* synthetic */ l[] f18643b = {C22128a.m8621g0(C5491e.class, "binding", "getBinding()Lcom/truecaller/databinding/CameraItemBinding;", 0)};

    /* renamed from: a */
    public final C19351b f18644a = new C19351b(new C5492a());

    /* renamed from: e.a.a.c.l8.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/e$a.class */
    public static final class C5492a extends m implements s1.z.b.l<C5491e, C18182r> {
        public C5492a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33010d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = 2131362682;
            CardView cardView = (CardView) view.findViewById(C2752R.C2754id.cameraCardView);
            if (cardView != null) {
                i = 2131365233;
                PreviewView previewView = (PreviewView) view.findViewById(2131365233);
                if (previewView != null) {
                    return new C18182r((FrameLayout) view, cardView, previewView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5491e(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
    }
}
