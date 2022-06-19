package p139j9;

import android.content.Context;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.C0608b;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* renamed from: j9.b */
/* loaded from: classes2-dex2jar.jar:j9/b.class */
public class C3290b extends RecyclerView.AbstractC0562e<RecyclerView.AbstractC0558a0> {

    /* renamed from: c */
    public final Context f11131c;

    /* renamed from: d */
    public int f11132d = 2131492910;

    /* renamed from: e */
    public int f11133e = 2131492912;

    /* renamed from: f */
    public int f11134f = 2131820657;

    /* renamed from: g */
    public List<C3293c> f11135g;

    /* renamed from: j9.b$a */
    /* loaded from: classes2-dex2jar.jar:j9/b$a.class */
    public static class C3291a extends RecyclerView.AbstractC0558a0 {

        /* renamed from: t */
        public TextView f11136t;

        /* renamed from: u */
        public TextView f11137u;

        public C3291a(View view) {
            super(view);
            this.f11136t = (TextView) view.findViewById(2131296466);
            this.f11137u = (TextView) view.findViewById(2131296465);
        }
    }

    /* renamed from: j9.b$b */
    /* loaded from: classes2-dex2jar.jar:j9/b$b.class */
    public static class C3292b extends RecyclerView.AbstractC0558a0 {

        /* renamed from: t */
        public TextView f11138t;

        /* renamed from: u */
        public TextView f11139u;

        public C3292b(View view) {
            super(view);
            this.f11138t = (TextView) view.findViewById(2131296469);
            this.f11139u = (TextView) view.findViewById(2131296470);
        }
    }

    public C3290b(Context context, List<C3293c> list) {
        this.f11131c = context;
        this.f11135g = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: a */
    public int mo705a() {
        return this.f11135g.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: c */
    public int mo703c(int i) {
        return this.f11135g.get(i).f11140a ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: d */
    public void mo702d(RecyclerView.AbstractC0558a0 abstractC0558a0, int i) {
        String str;
        if (this.f11135g.get(i).f11140a) {
            C3291a c3291a = (C3291a) abstractC0558a0;
            C3293c c3293c = this.f11135g.get(i);
            if (c3293c == null) {
                return;
            }
            if (c3291a.f11136t != null) {
                StringBuilder sb = new StringBuilder();
                String string = this.f11131c.getString(this.f11134f);
                if (string != null) {
                    sb.append(string);
                }
                sb.append(c3293c.f11141b);
                c3291a.f11136t.setText(sb.toString());
            }
            TextView textView = c3291a.f11137u;
            if (textView == null) {
                return;
            }
            String str2 = c3293c.f11143d;
            if (str2 != null) {
                textView.setText(str2);
                c3291a.f11137u.setVisibility(0);
                return;
            }
            textView.setText("");
            c3291a.f11137u.setVisibility(8);
            return;
        }
        C3292b c3292b = (C3292b) abstractC0558a0;
        C3293c c3293c2 = this.f11135g.get(i);
        if (c3293c2 == null) {
            return;
        }
        TextView textView2 = c3292b.f11138t;
        if (textView2 != null) {
            Context context = this.f11131c;
            if (context == null) {
                str = c3293c2.f11145f;
            } else {
                int i2 = c3293c2.f11146g;
                StringBuilder m7624k = C0608b.m7624k(i2 != 1 ? i2 != 2 ? "" : context.getResources().getString(2131820662).replaceAll("\\[", "<").replaceAll("\\]", ">") : context.getResources().getString(2131820661).replaceAll("\\[", "<").replaceAll("\\]", ">"), " ");
                m7624k.append(c3293c2.f11145f);
                str = m7624k.toString();
            }
            textView2.setText(Html.fromHtml(str));
            c3292b.f11138t.setMovementMethod(LinkMovementMethod.getInstance());
        }
        TextView textView3 = c3292b.f11139u;
        if (textView3 == null) {
            return;
        }
        if (c3293c2.f11144e) {
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: e */
    public RecyclerView.AbstractC0558a0 mo701e(ViewGroup viewGroup, int i) {
        return i == 1 ? new C3291a(LayoutInflater.from(viewGroup.getContext()).inflate(this.f11133e, viewGroup, false)) : new C3292b(LayoutInflater.from(viewGroup.getContext()).inflate(this.f11132d, viewGroup, false));
    }
}
