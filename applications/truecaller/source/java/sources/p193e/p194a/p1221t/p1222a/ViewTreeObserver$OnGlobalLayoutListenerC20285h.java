package p193e.p194a.p1221t.p1222a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.Toast;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.gifs.GifView;
import com.truecaller.android.truemoji.keyboard.EmojiKeyboardView;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20242b;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20265q;
import p193e.p194a.p1221t.p1222a.p1223a.C20239a;
import p193e.p194a.p1221t.p1222a.p1223a.C20244d;
import p193e.p194a.p1221t.p1222a.p1223a.C20246f;
import p193e.p194a.p1221t.p1222a.p1223a.C20252k;
import p193e.p194a.p1221t.p1222a.p1225v.C20326i;
import p193e.p194a.p195a.p200c.C5105b1;
import p193e.p194a.p195a.p200c.C5335h2;
import p193e.p194a.p195a.p200c.C5672q;
import p193e.p194a.p195a.p200c.C5790w;
import p193e.p194a.p195a.p200c.C5829z0;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.t.a.h */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/h.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC20285h extends PopupWindow implements ViewTreeObserver.OnGlobalLayoutListener, AbstractC26609n, AbstractC20248h {

    /* renamed from: w */
    public static final /* synthetic */ int f57076w = 0;

    /* renamed from: a */
    public final View f57077a;

    /* renamed from: b */
    public final EmojiKeyboardView f57078b;

    /* renamed from: c */
    public final GifView f57079c;

    /* renamed from: d */
    public final View f57080d;

    /* renamed from: e */
    public final RadioButton f57081e;

    /* renamed from: f */
    public final RadioButton f57082f;

    /* renamed from: g */
    public final C20326i f57083g;

    /* renamed from: h */
    public final C20244d f57084h;

    /* renamed from: i */
    public C20252k f57085i;

    /* renamed from: j */
    public int f57086j;

    /* renamed from: l */
    public final EditText f57088l;

    /* renamed from: m */
    public final AbstractC20301p f57089m;

    /* renamed from: n */
    public boolean f57090n;

    /* renamed from: o */
    public int f57091o;

    /* renamed from: p */
    public final AbstractC20247g<AbstractC20248h> f57092p;

    /* renamed from: r */
    public final AbstractC20287b f57094r;

    /* renamed from: s */
    public final AbstractC20289d f57095s;

    /* renamed from: t */
    public final AbstractC20288c f57096t;

    /* renamed from: u */
    public final AbstractC20290e f57097u;

    /* renamed from: v */
    public final C5790w f57098v;

    /* renamed from: q */
    public final AbstractC20286a f57093q = null;

    /* renamed from: k */
    public final AbstractC20300o f57087k = new C20294i(this);

    /* renamed from: e.a.t.a.h$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$a.class */
    public interface AbstractC20286a {
        /* renamed from: a */
        void m11267a();
    }

    /* renamed from: e.a.t.a.h$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$b.class */
    public interface AbstractC20287b {
    }

    /* renamed from: e.a.t.a.h$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$c.class */
    public interface AbstractC20288c {
    }

    /* renamed from: e.a.t.a.h$d */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$d.class */
    public interface AbstractC20289d {
    }

    /* renamed from: e.a.t.a.h$e */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$e.class */
    public interface AbstractC20290e {
    }

    /* renamed from: e.a.t.a.h$f */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$f.class */
    public static final class C20291f implements AbstractC20265q {
        public C20291f() {
            ViewTreeObserver$OnGlobalLayoutListenerC20285h.this = r4;
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20265q
        /* renamed from: a */
        public void mo11266a() {
            ViewTreeObserver$OnGlobalLayoutListenerC20285h.this.f57092p.mo11302yb();
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20265q
        /* renamed from: b */
        public void mo11265b(String str, boolean z) {
            AbstractC20247g<AbstractC20248h> abstractC20247g = ViewTreeObserver$OnGlobalLayoutListenerC20285h.this.f57092p;
            if (str == null) {
                str = "";
            }
            abstractC20247g.mo11304ji(str, z);
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20265q
        /* renamed from: u1 */
        public void mo11264u1() {
            ViewTreeObserver$OnGlobalLayoutListenerC20285h.this.f57092p.mo11303u1();
        }
    }

    /* renamed from: e.a.t.a.h$g */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$g.class */
    public static final class C20292g implements AbstractC20242b {

        /* renamed from: e.a.t.a.h$g$a */
        /* loaded from: classes5-dex2jar.jar:e/a/t/a/h$g$a.class */
        public static final class RunnableC20293a implements Runnable {
            public RunnableC20293a() {
                C20292g.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h = ViewTreeObserver$OnGlobalLayoutListenerC20285h.this;
                int i = ViewTreeObserver$OnGlobalLayoutListenerC20285h.f57076w;
                viewTreeObserver$OnGlobalLayoutListenerC20285h.m11270k(1);
                ViewTreeObserver$OnGlobalLayoutListenerC20285h.this.m11269l();
            }
        }

        public C20292g() {
            ViewTreeObserver$OnGlobalLayoutListenerC20285h.this = r4;
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20242b
        /* renamed from: a */
        public void mo11263a(boolean z) {
            if (!z) {
                ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h = ViewTreeObserver$OnGlobalLayoutListenerC20285h.this;
                viewTreeObserver$OnGlobalLayoutListenerC20285h.f57086j = 0;
                viewTreeObserver$OnGlobalLayoutListenerC20285h.m11270k(0);
                ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h2 = ViewTreeObserver$OnGlobalLayoutListenerC20285h.this;
                AbstractC20287b abstractC20287b = viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57094r;
                ((C5335h2) abstractC20287b).f18271a.f19545z.mo32385ta(viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57086j);
            } else {
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC20293a(), 500L);
            }
            ((C5829z0) ViewTreeObserver$OnGlobalLayoutListenerC20285h.this.f57097u).f19563a.f19545z.mo32390Kd(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewTreeObserver$OnGlobalLayoutListenerC20285h(EditText editText, AbstractC20301p abstractC20301p, boolean z, int i, AbstractC20247g<? super AbstractC20248h> abstractC20247g, AbstractC20286a abstractC20286a, AbstractC20287b abstractC20287b, AbstractC20289d abstractC20289d, AbstractC20288c abstractC20288c, AbstractC20290e abstractC20290e, C5790w c5790w) {
        l.e(editText, "editText");
        l.e(abstractC20301p, "recentEmoji");
        l.e(abstractC20247g, "gifPresenter");
        l.e(abstractC20287b, "onEmojiPopupDismissListener");
        l.e(abstractC20289d, "onTabClickedListener");
        l.e(abstractC20288c, "onEmojiPopupShownListener");
        l.e(abstractC20290e, "onTenorConsentDismissListener");
        l.e(c5790w, "onGifClickListener");
        this.f57088l = editText;
        this.f57089m = abstractC20301p;
        this.f57090n = z;
        this.f57091o = i;
        this.f57092p = abstractC20247g;
        this.f57094r = abstractC20287b;
        this.f57095s = abstractC20289d;
        this.f57096t = abstractC20288c;
        this.f57097u = abstractC20290e;
        this.f57098v = c5790w;
        this.f57083g = new C20326i(editText);
        C20244d c20244d = new C20244d(new C20295j(this));
        this.f57084h = c20244d;
        abstractC20247g.m11311Y0(this);
        View inflate = LayoutInflater.from(editText.getContext()).inflate(C2886R.layout.container, (ViewGroup) null, false);
        l.d(inflate, "LayoutInflater.from(edit…t.container, null, false)");
        this.f57077a = inflate;
        View findViewById = inflate.findViewById(C2886R.C2888id.emojiKeyboardView);
        l.d(findViewById, "view.findViewById(R.id.emojiKeyboardView)");
        EmojiKeyboardView emojiKeyboardView = (EmojiKeyboardView) findViewById;
        this.f57078b = emojiKeyboardView;
        View findViewById2 = inflate.findViewById(C2886R.C2888id.gifView);
        l.d(findViewById2, "view.findViewById(R.id.gifView)");
        GifView gifView = (GifView) findViewById2;
        this.f57079c = gifView;
        View findViewById3 = inflate.findViewById(C2886R.C2888id.img_search);
        l.d(findViewById3, "view.findViewById(R.id.img_search)");
        this.f57080d = findViewById3;
        View findViewById4 = inflate.findViewById(C2886R.C2888id.radio_emojis);
        l.d(findViewById4, "view.findViewById(R.id.radio_emojis)");
        RadioButton radioButton = (RadioButton) findViewById4;
        this.f57081e = radioButton;
        View findViewById5 = inflate.findViewById(C2886R.C2888id.radio_gifs);
        l.d(findViewById5, "view.findViewById(R.id.radio_gifs)");
        RadioButton radioButton2 = (RadioButton) findViewById5;
        this.f57082f = radioButton2;
        gifView.setAdapter(c20244d);
        gifView.setonNoInternetClicked(new C20284g(this));
        findViewById3.setOnClickListener(new l1(0, this));
        inflate.findViewById(C2886R.C2888id.button_keyboard).setOnClickListener(new l1(1, this));
        radioButton.setOnClickListener(new l1(2, this));
        radioButton2.setOnClickListener(new l1(3, this));
        emojiKeyboardView.setRecentEmoji(abstractC20301p);
        setContentView(inflate);
    }

    /* renamed from: j */
    public static final void m11271j(ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h, int i) {
        if (!viewTreeObserver$OnGlobalLayoutListenerC20285h.f57090n && i == 1) {
            viewTreeObserver$OnGlobalLayoutListenerC20285h.f57081e.setChecked(true);
            Toast.makeText(viewTreeObserver$OnGlobalLayoutListenerC20285h.f57088l.getContext(), viewTreeObserver$OnGlobalLayoutListenerC20285h.f57091o, 1).show();
            return;
        }
        if (!(i == 1 ? viewTreeObserver$OnGlobalLayoutListenerC20285h.f57092p.mo11307Ke(viewTreeObserver$OnGlobalLayoutListenerC20285h.f57084h.getItemCount()) : true)) {
            viewTreeObserver$OnGlobalLayoutListenerC20285h.f57081e.setChecked(true);
            return;
        }
        viewTreeObserver$OnGlobalLayoutListenerC20285h.m11270k(i);
        ((C5105b1) viewTreeObserver$OnGlobalLayoutListenerC20285h.f57095s).f17479a.f19545z.mo32388Xh(i);
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: M */
    public void mo11280M(C20246f c20246f) {
        l.e(c20246f, MediaFormat.GIF);
        this.f57098v.f19398a.f19545z.mo32387e0(c20246f);
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: a */
    public void mo11279a(int i) {
        Toast.makeText(this.f57088l.getContext(), i, 0).show();
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        l.e(view, "v");
        l.e(c26568d0, "insets");
        float f = c26568d0.m1665b(16).f74280d > 0 ? 32.0f : 0.0f;
        View view2 = this.f57077a;
        view2.setPadding(0, 0, 0, C8605o.m28238b(view2.getContext(), f));
        C26568d0 m1570k = C26614s.m1570k(view, c26568d0);
        l.d(m1570k, "ViewCompat.onApplyWindowInsets(v, insets)");
        return m1570k;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [e.a.t.a.a.a, android.app.Dialog] */
    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: c */
    public void mo11278c() {
        dismiss();
        C19286f.m13679Y(this.f57088l, false, 0L, 2);
        Context context = this.f57088l.getContext();
        l.d(context, "editText.context");
        new C20239a(context, new C20292g()).show();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.t.a.a.k, n3.b.a.p] */
    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: d */
    public void mo11277d() {
        ?? r0 = this.f57085i;
        if (r0 != 0) {
            r0.dismiss();
        }
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        C26614s.m1563r(this.f57077a.getRootView(), null);
        this.f57088l.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.f57078b.setOnEmojiClickListener(null);
        this.f57083g.f57147b = null;
        this.f57089m.mo11260a();
        super.dismiss();
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: e */
    public void mo11276e() {
        C20244d c20244d = this.f57084h;
        c20244d.f57000a.clear();
        c20244d.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: f */
    public void mo11275f(boolean z) {
        this.f57079c.m35913c(z);
        C20252k c20252k = this.f57085i;
        if (c20252k != null) {
            c20252k.m11300h().m35913c(z);
        }
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: g */
    public void mo11274g(List<C20246f> list, boolean z) {
        l.e(list, "gifs");
        C20244d c20244d = this.f57084h;
        Objects.requireNonNull(c20244d);
        l.e(list, "gifs");
        if (!z) {
            c20244d.f57000a.clear();
        }
        c20244d.f57000a.addAll(list);
        c20244d.notifyDataSetChanged();
        C20252k c20252k = this.f57085i;
        if (c20252k != null) {
            c20252k.f57020u = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [e.a.t.a.a.k, android.app.Dialog] */
    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: h */
    public void mo11273h() {
        dismiss();
        C19286f.m13679Y(this.f57088l, false, 0L, 2);
        Context context = this.f57088l.getContext();
        l.d(context, "editText.context");
        Context context2 = context;
        if (context instanceof Activity) {
            ?? c20252k = new C20252k(context);
            C20244d c20244d = this.f57084h;
            l.e(c20244d, "adapter");
            c20252k.m11300h().setAdapter(c20244d);
            C20291f c20291f = new C20291f();
            l.e(c20291f, "gifSearchListener");
            c20252k.f57015p = c20291f;
            c20252k.show();
            this.f57085i = c20252k;
            return;
        }
        while (context2 instanceof ContextWrapper) {
            context = ((ContextWrapper) context2).getBaseContext();
            l.d(context, "currentContext.baseContext");
            context2 = context;
            if (context instanceof Activity) {
                ?? c20252k2 = new C20252k(context);
                C20244d c20244d2 = this.f57084h;
                l.e(c20244d2, "adapter");
                c20252k2.m11300h().setAdapter(c20244d2);
                C20291f c20291f2 = new C20291f();
                l.e(c20291f2, "gifSearchListener");
                c20252k2.f57015p = c20291f2;
                c20252k2.show();
                this.f57085i = c20252k2;
                return;
            }
        }
        throw new IllegalStateException(C22128a.m8643a2(Activity.class, C22128a.m8728C("Context does not implement ")));
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20248h
    /* renamed from: i */
    public void mo11272i(boolean z) {
        this.f57079c.m35912d(z);
        C20252k c20252k = this.f57085i;
        if (c20252k != null) {
            c20252k.m11300h().m35912d(z);
        }
    }

    /* renamed from: k */
    public final void m11270k(int i) {
        if (i == 0) {
            this.f57086j = 0;
            C19286f.m13683U(this.f57078b, true);
            C19286f.m13683U(this.f57079c, false);
            this.f57081e.setChecked(true);
        } else if (i != 1) {
        } else {
            this.f57086j = 1;
            C19286f.m13683U(this.f57078b, false);
            C19286f.m13683U(this.f57079c, true);
            this.f57082f.setChecked(true);
        }
    }

    /* renamed from: l */
    public final void m11269l() {
        if (isShowing()) {
            dismiss();
            ((C5335h2) this.f57094r).f18271a.f19545z.mo32385ta(this.f57086j);
            return;
        }
        if (!((this.f57086j != 1 || !this.f57090n) ? true : this.f57092p.mo11307Ke(this.f57084h.getItemCount()))) {
            return;
        }
        C26614s.m1563r(this.f57077a.getRootView(), this);
        this.f57088l.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f57078b.setOnEmojiClickListener(this.f57087k);
        this.f57083g.f57147b = this.f57087k;
        ((C5672q) this.f57096t).f19037a.f19545z.mo32384y2(this.f57086j, true);
        this.f57088l.requestFocus();
        Object systemService = this.f57088l.getContext().getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).showSoftInput(this.f57088l, 2);
        m11268m();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r12 != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0113  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11268m() {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1221t.p1222a.ViewTreeObserver$OnGlobalLayoutListenerC20285h.m11268m():void");
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        m11268m();
    }
}
