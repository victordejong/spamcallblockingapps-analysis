package p459j.p460a.p531k0.p532g;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.gogolook.developmode.p050ui.FreeLayout;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.util.ArrayList;
import java.util.Iterator;
import p459j.p460a.p582w0.C14136r3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.k0.g.a */
/* loaded from: classes3-dex2jar.jar:j/a/k0/g/a.class */
public class DialogC12864a extends Dialog {

    /* renamed from: a */
    public C12869e f29094a;

    /* renamed from: j.a.k0.g.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$a.class */
    public class View$OnClickListenerC12865a implements View.OnClickListener {
        public View$OnClickListenerC12865a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC12864a.this.dismiss();
        }
    }

    /* renamed from: j.a.k0.g.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$b.class */
    public class C12866b implements TextWatcher {
        public C12866b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = DialogC12864a.this.f29094a.f29104l.getText().toString();
            if (obj.getBytes().length > 40) {
                DialogC12864a.this.f29094a.f29104l.setText(C14136r3.m2389a(obj, 40));
                DialogC12864a.this.f29094a.f29104l.setSelection(DialogC12864a.this.f29094a.f29104l.getText().length());
                C14687h.m861a(DialogC12864a.this.getContext(), DialogC12864a.this.getContext().getString(R$string.max_groupname_bytes, String.valueOf(40)), 1).m858c();
            }
            if (DialogC12864a.this.f29094a.f29104l.getText().toString().trim().length() > 0) {
                DialogC12864a.this.m5115a(true);
            } else {
                DialogC12864a.this.m5115a(false);
            }
        }
    }

    /* renamed from: j.a.k0.g.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$c.class */
    public class View$OnClickListenerC12867c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f29097a;

        public View$OnClickListenerC12867c(DialogInterface.OnClickListener onClickListener) {
            this.f29097a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC12864a.this.dismiss();
            DialogInterface.OnClickListener onClickListener = this.f29097a;
            if (onClickListener != null) {
                onClickListener.onClick(DialogC12864a.this, -1);
            }
        }
    }

    /* renamed from: j.a.k0.g.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$d.class */
    public class View$OnClickListenerC12868d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f29099a;

        public View$OnClickListenerC12868d(DialogInterface.OnClickListener onClickListener) {
            this.f29099a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC12864a.this.dismiss();
            DialogInterface.OnClickListener onClickListener = this.f29099a;
            if (onClickListener != null) {
                onClickListener.onClick(DialogC12864a.this, -2);
            }
        }
    }

    /* renamed from: j.a.k0.g.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$e.class */
    public static class C12869e extends FreeLayout {

        /* renamed from: i */
        public View f29101i = LayoutInflater.from(getContext()).inflate(R$layout.favorite_dialog_add, (ViewGroup) null);

        /* renamed from: j */
        public ImageView f29102j = (ImageView) this.f29101i.findViewById(R$id.call_btn_close);

        /* renamed from: k */
        public TextView f29103k = (TextView) this.f29101i.findViewById(R$id.tv_title);

        /* renamed from: l */
        public EditText f29104l = (EditText) this.f29101i.findViewById(R$id.tv_input);

        /* renamed from: m */
        public TextView f29105m = (TextView) this.f29101i.findViewById(R$id.favorite_submit);

        /* renamed from: n */
        public TextView f29106n = (TextView) this.f29101i.findViewById(R$id.tv_delete);

        /* renamed from: o */
        public ArrayList<View> f29107o = new ArrayList<>();

        /* renamed from: j.a.k0.g.a$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/g/a$e$a.class */
        public class ViewTreeObserver$OnGlobalLayoutListenerC12870a implements ViewTreeObserver.OnGlobalLayoutListener {
            public ViewTreeObserver$OnGlobalLayoutListenerC12870a() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Rect rect = new Rect();
                C12869e.this.getWindowVisibleDisplayFrame(rect);
                int height = C12869e.this.getRootView().getHeight();
                if (height - rect.bottom > height * 0.15d) {
                    if (C12869e.this.getLayoutParams().height != rect.height()) {
                        C12869e.this.getLayoutParams().height = rect.height();
                        C12869e.this.requestLayout();
                    }
                } else if (C12869e.this.getLayoutParams().height != -1) {
                    C12869e.this.getLayoutParams().height = -1;
                    C12869e.this.requestLayout();
                }
            }
        }

        public C12869e(Context context) {
            super(context);
            m32235a();
            setBackgroundColor(context.getResources().getColor(2131099841));
            setFocusable(true);
            setFocusableInTouchMode(true);
            m32228a(this.f29101i, -2, -2, new int[]{13});
            this.f29101i.getLayoutParams().width = C14217x3.m2201a(260.0f);
            this.f29107o.add(m32230a(new View(context), -1, -1, this.f29101i, new int[]{0}));
            View a = m32230a(new View(context), -1, -1, this.f29101i, new int[]{2});
            this.f29107o.add(a);
            this.f29107o.add(a);
            this.f29107o.add(m32230a(new View(context), -1, -1, this.f29101i, new int[]{1}));
            this.f29107o.add(m32230a(new View(context), -1, -1, this.f29101i, new int[]{3}));
            m5110c();
        }

        /* renamed from: c */
        public final void m5110c() {
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC12870a());
        }
    }

    public DialogC12864a(Context context) {
        super(context, 16973840);
        m5114b();
    }

    /* renamed from: a */
    public EditText m5118a() {
        return this.f29094a.f29104l;
    }

    /* renamed from: a */
    public DialogC12864a m5116a(String str, DialogInterface.OnClickListener onClickListener) {
        this.f29094a.f29102j.setOnClickListener(new View$OnClickListenerC12868d(onClickListener));
        return this;
    }

    /* renamed from: a */
    public void m5115a(boolean z) {
        this.f29094a.f29105m.setEnabled(z);
        if (z) {
            this.f29094a.f29105m.setBackgroundResource(R$drawable.green_btn_selector);
        } else {
            this.f29094a.f29105m.setBackgroundResource(R$drawable.call_end_disable_btn);
        }
    }

    /* renamed from: b */
    public DialogC12864a m5113b(String str, DialogInterface.OnClickListener onClickListener) {
        this.f29094a.f29105m.setText(str);
        this.f29094a.f29105m.setOnClickListener(new View$OnClickListenerC12867c(onClickListener));
        return this;
    }

    /* renamed from: b */
    public final void m5114b() {
        this.f29094a = new C12869e(getContext());
        setContentView(this.f29094a);
        m5111d();
    }

    /* renamed from: c */
    public DialogC12864a m5112c() {
        this.f29094a.f29106n.setVisibility(8);
        return this;
    }

    /* renamed from: d */
    public final void m5111d() {
        View$OnClickListenerC12865a aVar = new View$OnClickListenerC12865a();
        this.f29094a.f29102j.setOnClickListener(aVar);
        Iterator<View> it = this.f29094a.f29107o.iterator();
        while (it.hasNext()) {
            it.next().setOnClickListener(aVar);
        }
        this.f29094a.f29104l.addTextChangedListener(new C12866b());
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        this.f29094a.f29103k.setText(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f29094a.f29103k.setText(charSequence);
    }
}
