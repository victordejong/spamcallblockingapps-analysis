package p459j.p618b.p619a.p620a.p621a;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C14217x3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0010\b\u0017\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\u0019\u001a\u0004\u0018\u0001H\u001a\"\b\b��\u0010\u001a*\u00020\u00052\u0006\u0010\u001b\u001a\u00020\b¢\u0006\u0002\u0010\u001cR$\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0014\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, m815d2 = {"Lgogolook/support/v7/widget/extension/DividerViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mContext", "Landroid/content/Context;", "itemView", "Landroid/view/View;", "(Landroid/content/Context;Landroid/view/View;)V", C13032a.f29462d, "", "dividerColor", "getDividerColor", "()I", "setDividerColor", "(I)V", "", "dividerHeight", "getDividerHeight", "()F", "setDividerHeight", "(F)V", "mDividerView", "getMDividerView", "()Landroid/view/View;", "mDividerView$delegate", "Lkotlin/Lazy;", "findViewById", ExifInterface.GPS_DIRECTION_TRUE, "id", "(I)Landroid/view/View;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.b.a.a.a.b */
/* loaded from: classes3-dex2jar.jar:j/b/a/a/a/b.class */
public class C14690b extends RecyclerView.ViewHolder {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f32807e;

    /* renamed from: f */
    public static final C14691a f32808f = new C14691a(null);

    /* renamed from: b */
    public float f32810b;

    /* renamed from: d */
    public final Context f32812d;

    /* renamed from: a */
    public int f32809a = Color.parseColor("#e6e6e6");

    /* renamed from: c */
    public final AbstractC14974f f32811c = C14975g.m662a(new C14692b());

    /* renamed from: j.b.a.a.a.b$a */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/b$a.class */
    public static final class C14691a {
        public C14691a() {
        }

        public /* synthetic */ C14691a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final View m844a(Context context, View view) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout.setOrientation(1);
            linearLayout.addView(view);
            return linearLayout;
        }
    }

    /* renamed from: j.b.a.a.a.b$b */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/b$b.class */
    public static final class C14692b extends AbstractC15150l implements AbstractC15107a<View> {
        public C14692b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final View invoke() {
            View view = new View(C14690b.this.f32812d);
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, C14217x3.m2201a(C14690b.this.m847b())));
            view.setBackgroundColor(C14690b.this.m851a());
            return view;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14690b.class), "mDividerView", "getMDividerView()Landroid/view/View;");
        C15131a0.m412a(sVar);
        f32807e = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14690b(Context context, View view) {
        super(f32808f.m844a(context, view));
        C15149k.m377b(context, "mContext");
        C15149k.m377b(view, "itemView");
        this.f32812d = context;
        View view2 = this.itemView;
        if (view2 != null) {
            ((ViewGroup) view2).addView(m845c());
            return;
        }
        throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup");
    }

    /* renamed from: a */
    public final int m851a() {
        return this.f32809a;
    }

    /* renamed from: a */
    public final <T extends View> T m849a(int i) {
        return (T) this.itemView.findViewById(i);
    }

    /* renamed from: a */
    public final void m850a(float f) {
        this.f32810b = f;
        View c = m845c();
        if (this.f32810b <= 0) {
            c.setVisibility(8);
            return;
        }
        c.setVisibility(0);
        c.getLayoutParams().height = C14217x3.m2201a(this.f32810b);
        this.itemView.postInvalidate();
    }

    /* renamed from: b */
    public final float m847b() {
        return this.f32810b;
    }

    /* renamed from: b */
    public final void m846b(int i) {
        this.f32809a = i;
        m845c().setBackgroundColor(this.f32809a);
        this.itemView.postInvalidate();
    }

    /* renamed from: c */
    public final View m845c() {
        AbstractC14974f fVar = this.f32811c;
        AbstractC14906i iVar = f32807e[0];
        return (View) fVar.getValue();
    }
}
