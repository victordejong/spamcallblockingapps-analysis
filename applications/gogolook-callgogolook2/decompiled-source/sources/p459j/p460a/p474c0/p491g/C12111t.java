package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.t */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/t.class */
public class C12111t {

    /* renamed from: a */
    public final View f27195a;

    /* renamed from: b */
    public final Context f27196b;

    /* renamed from: c */
    public final View f27197c;

    /* renamed from: d */
    public final String f27198d;

    /* renamed from: e */
    public final int f27199e;

    /* renamed from: f */
    public final List<AbstractC12117u> f27200f;

    /* renamed from: g */
    public final C12113b f27201g;

    /* renamed from: h */
    public final C12115d f27202h;

    /* renamed from: i */
    public final TextView f27203i;

    /* renamed from: j */
    public final TextView f27204j;

    /* renamed from: k */
    public final FrameLayout f27205k;

    /* renamed from: l */
    public final View f27206l;

    /* renamed from: m */
    public AbstractC12116e f27207m;

    /* renamed from: j.a.c0.g.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/t$a.class */
    public class View$OnClickListenerC12112a implements View.OnClickListener {
        public View$OnClickListenerC12112a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12111t.this.f27201g.m7138b().run();
            if (C12111t.this.f27207m != null) {
                C12111t.this.f27207m.mo7096a();
            }
        }
    }

    /* renamed from: j.a.c0.g.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/t$b.class */
    public static class C12113b {

        /* renamed from: a */
        public final Runnable f27209a;

        /* renamed from: b */
        public final String f27210b;

        public C12113b(@Nullable Runnable runnable, @Nullable String str) {
            this.f27209a = runnable;
            this.f27210b = str;
        }

        /* renamed from: a */
        public static C12113b m7139a(Runnable runnable, String str) {
            return new C12113b(runnable, str);
        }

        /* renamed from: a */
        public String m7140a() {
            return this.f27210b;
        }

        /* renamed from: b */
        public Runnable m7138b() {
            return this.f27209a;
        }
    }

    /* renamed from: j.a.c0.g.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/t$c.class */
    public static class C12114c {

        /* renamed from: i */
        public static final List<AbstractC12117u> f27211i = new ArrayList();

        /* renamed from: a */
        public final Context f27212a;

        /* renamed from: b */
        public final C12118v f27213b;

        /* renamed from: c */
        public String f27214c;

        /* renamed from: d */
        public int f27215d = 5000;

        /* renamed from: e */
        public List<AbstractC12117u> f27216e = f27211i;

        /* renamed from: f */
        public C12113b f27217f;

        /* renamed from: g */
        public C12115d f27218g;

        /* renamed from: h */
        public View f27219h;

        public C12114c(C12118v vVar, View view) {
            C12151d.m7000b(vVar);
            C12151d.m7000b(view);
            this.f27213b = vVar;
            this.f27212a = view.getContext();
            this.f27219h = view;
        }

        /* renamed from: a */
        public C12114c m7136a(C12113b bVar) {
            this.f27217f = bVar;
            return this;
        }

        /* renamed from: a */
        public C12114c m7134a(C12115d dVar) {
            C12151d.m7008a(this.f27218g);
            this.f27218g = dVar;
            return this;
        }

        /* renamed from: a */
        public C12114c m7133a(String str) {
            C12151d.m6999b(!TextUtils.isEmpty(str));
            this.f27214c = str;
            return this;
        }

        /* renamed from: a */
        public C12114c m7132a(List<AbstractC12117u> list) {
            this.f27216e = list;
            return this;
        }

        /* renamed from: a */
        public C12111t m7137a() {
            return new C12111t(this, null);
        }

        /* renamed from: b */
        public void m7131b() {
            this.f27213b.m7097i(m7137a());
        }
    }

    /* renamed from: j.a.c0.g.t$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/t$d.class */
    public static class C12115d {

        /* renamed from: a */
        public final View f27220a;

        /* renamed from: b */
        public final boolean f27221b;

        public C12115d(@NonNull View view, boolean z) {
            C12151d.m7000b(view);
            this.f27220a = view;
            this.f27221b = z;
        }

        /* renamed from: a */
        public static C12115d m7123a(View view) {
            return new C12115d(view, true);
        }

        /* renamed from: a */
        public boolean m7124a() {
            return this.f27221b;
        }

        /* renamed from: b */
        public View m7122b() {
            return this.f27220a;
        }
    }

    /* renamed from: j.a.c0.g.t$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/t$e.class */
    public interface AbstractC12116e {
        /* renamed from: a */
        void mo7096a();
    }

    public C12111t(C12114c cVar) {
        this.f27196b = cVar.f27212a;
        this.f27195a = LayoutInflater.from(this.f27196b).inflate(R$layout.snack_bar, (ViewGroup) null);
        this.f27197c = this.f27195a.findViewById(R$id.snack_bar);
        this.f27198d = cVar.f27214c;
        this.f27199e = cVar.f27215d;
        this.f27201g = cVar.f27217f;
        this.f27202h = cVar.f27218g;
        this.f27206l = cVar.f27219h;
        if (cVar.f27216e == null) {
            this.f27200f = new ArrayList();
        } else {
            this.f27200f = cVar.f27216e;
        }
        this.f27203i = (TextView) this.f27195a.findViewById(R$id.snack_bar_action);
        this.f27204j = (TextView) this.f27195a.findViewById(R$id.snack_bar_message);
        this.f27205k = (FrameLayout) this.f27195a.findViewById(R$id.snack_bar_message_wrapper);
        m7142j();
        m7141k();
    }

    public /* synthetic */ C12111t(C12114c cVar, View$OnClickListenerC12112a aVar) {
        this(cVar);
    }

    /* renamed from: a */
    public String m7155a() {
        C12113b bVar = this.f27201g;
        if (bVar == null) {
            return null;
        }
        return bVar.m7140a();
    }

    /* renamed from: a */
    public void m7154a(AbstractC12116e eVar) {
        this.f27207m = eVar;
    }

    /* renamed from: a */
    public void m7152a(boolean z) {
        this.f27203i.setClickable(z);
    }

    /* renamed from: b */
    public Context m7151b() {
        return this.f27196b;
    }

    /* renamed from: c */
    public int m7149c() {
        return this.f27199e;
    }

    /* renamed from: d */
    public List<AbstractC12117u> m7148d() {
        return this.f27200f;
    }

    /* renamed from: e */
    public String m7147e() {
        return this.f27198d;
    }

    /* renamed from: f */
    public View m7146f() {
        return this.f27206l;
    }

    /* renamed from: g */
    public C12115d m7145g() {
        return this.f27202h;
    }

    /* renamed from: h */
    public View m7144h() {
        return this.f27195a;
    }

    /* renamed from: i */
    public View m7143i() {
        return this.f27197c;
    }

    /* renamed from: j */
    public final void m7142j() {
        C12113b bVar = this.f27201g;
        if (bVar == null || bVar.m7138b() == null) {
            this.f27203i.setVisibility(8);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f27205k.getLayoutParams();
            int dimensionPixelSize = this.f27196b.getResources().getDimensionPixelSize(R$dimen.snack_bar_left_right_margin);
            marginLayoutParams.leftMargin = dimensionPixelSize;
            marginLayoutParams.rightMargin = dimensionPixelSize;
            this.f27205k.setLayoutParams(marginLayoutParams);
            return;
        }
        this.f27203i.setVisibility(0);
        this.f27203i.setText(this.f27201g.m7140a());
        this.f27203i.setOnClickListener(new View$OnClickListenerC12112a());
    }

    /* renamed from: k */
    public final void m7141k() {
        if (this.f27198d == null) {
            this.f27204j.setVisibility(8);
            return;
        }
        this.f27204j.setVisibility(0);
        this.f27204j.setText(this.f27198d);
    }
}
