package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.C0396a;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0444l;
import com.google.android.material.datepicker.C1726a;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p029c4.C0822f;
import p029c4.C0827i;
import p097g.C2788a;
import p163m0.C3589v;
import p163m0.C3611y;
import p208q3.View$OnTouchListenerC4153a;
import p230s3.C4285a;
import p304z3.C5070b;
/* renamed from: com.google.android.material.datepicker.o */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/o.class */
public final class C1753o<S> extends DialogInterface$OnCancelListenerC0444l {

    /* renamed from: r */
    public static final /* synthetic */ int f6569r = 0;

    /* renamed from: a */
    public final LinkedHashSet<AbstractC1758q<? super S>> f6570a = new LinkedHashSet<>();

    /* renamed from: b */
    public final LinkedHashSet<View.OnClickListener> f6571b = new LinkedHashSet<>();

    /* renamed from: c */
    public final LinkedHashSet<DialogInterface.OnCancelListener> f6572c = new LinkedHashSet<>();

    /* renamed from: d */
    public final LinkedHashSet<DialogInterface.OnDismissListener> f6573d = new LinkedHashSet<>();

    /* renamed from: e */
    public int f6574e;

    /* renamed from: f */
    public AbstractC1736d<S> f6575f;

    /* renamed from: g */
    public AbstractC1768x<S> f6576g;

    /* renamed from: h */
    public C1726a f6577h;

    /* renamed from: i */
    public C1740g<S> f6578i;

    /* renamed from: j */
    public int f6579j;

    /* renamed from: k */
    public CharSequence f6580k;

    /* renamed from: l */
    public boolean f6581l;

    /* renamed from: m */
    public int f6582m;

    /* renamed from: n */
    public TextView f6583n;

    /* renamed from: o */
    public CheckableImageButton f6584o;

    /* renamed from: p */
    public C0822f f6585p;

    /* renamed from: q */
    public Button f6586q;

    /* renamed from: com.google.android.material.datepicker.o$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/o$a.class */
    public class View$OnClickListenerC1754a implements View.OnClickListener {
        public View$OnClickListenerC1754a() {
            C1753o.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator<AbstractC1758q<? super S>> it2 = C1753o.this.f6570a.iterator();
            while (it2.hasNext()) {
                it2.next().m4609a((S) C1753o.this.m4616a().m4632D());
            }
            C1753o.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.o$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/o$b.class */
    public class View$OnClickListenerC1755b implements View.OnClickListener {
        public View$OnClickListenerC1755b() {
            C1753o.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator<View.OnClickListener> it2 = C1753o.this.f6571b.iterator();
            while (it2.hasNext()) {
                it2.next().onClick(view);
            }
            C1753o.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.o$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/o$c.class */
    public class C1756c extends AbstractC1767w<S> {
        public C1756c() {
            C1753o.this = r4;
        }

        @Override // com.google.android.material.datepicker.AbstractC1767w
        /* renamed from: a */
        public void mo4593a(S s) {
            C1753o c1753o = C1753o.this;
            int i = C1753o.f6569r;
            c1753o.m4611g();
            C1753o c1753o2 = C1753o.this;
            c1753o2.f6586q.setEnabled(c1753o2.m4616a().m4626s());
        }
    }

    /* renamed from: c */
    public static int m4615c(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131165665);
        Calendar m4639d = C1730a0.m4639d();
        m4639d.set(5, 1);
        Calendar m4641b = C1730a0.m4641b(m4639d);
        m4641b.get(2);
        m4641b.get(1);
        int maximum = m4641b.getMaximum(7);
        m4641b.getActualMaximum(5);
        m4641b.getTimeInMillis();
        return ((maximum - 1) * resources.getDimensionPixelOffset(2131165685)) + (resources.getDimensionPixelSize(2131165671) * maximum) + (dimensionPixelOffset * 2);
    }

    /* renamed from: d */
    public static boolean m4614d(Context context) {
        return m4613e(context, 16843277);
    }

    /* renamed from: e */
    public static boolean m4613e(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C5070b.m73c(context, 2130969293, C1740g.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: a */
    public final AbstractC1736d<S> m4616a() {
        if (this.f6575f == null) {
            this.f6575f = (AbstractC1736d) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f6575f;
    }

    /* renamed from: f */
    public final void m4612f() {
        C1759r c1759r;
        Context requireContext = requireContext();
        int i = this.f6574e;
        if (i == 0) {
            i = m4616a().m4628k(requireContext);
        }
        AbstractC1736d<S> m4616a = m4616a();
        C1726a c1726a = this.f6577h;
        C1740g<S> c1740g = new C1740g<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", m4616a);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1726a);
        bundle.putParcelable("CURRENT_MONTH_KEY", c1726a.f6508d);
        c1740g.setArguments(bundle);
        this.f6578i = c1740g;
        if (this.f6584o.isChecked()) {
            AbstractC1736d<S> m4616a2 = m4616a();
            C1726a c1726a2 = this.f6577h;
            c1759r = new C1759r();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i);
            bundle2.putParcelable("DATE_SELECTOR_KEY", m4616a2);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1726a2);
            c1759r.setArguments(bundle2);
        } else {
            c1759r = this.f6578i;
        }
        this.f6576g = c1759r;
        m4611g();
        C0396a c0396a = new C0396a(getChildFragmentManager());
        c0396a.m8095e(2131296818, this.f6576g, null);
        c0396a.m8213h();
        this.f6576g.mo4592a(new C1756c());
    }

    /* renamed from: g */
    public final void m4611g() {
        String m4629d = m4616a().m4629d(getContext());
        this.f6583n.setContentDescription(String.format(getString(2131820889), m4629d));
        this.f6583n.setText(m4629d);
    }

    /* renamed from: h */
    public final void m4610h(CheckableImageButton checkableImageButton) {
        this.f6584o.setContentDescription(this.f6584o.isChecked() ? checkableImageButton.getContext().getString(2131820914) : checkableImageButton.getContext().getString(2131820916));
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f6572c.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f6574e = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f6575f = (AbstractC1736d) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f6577h = (C1726a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f6579j = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f6580k = bundle2.getCharSequence("TITLE_TEXT_KEY");
        this.f6582m = bundle2.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        int i = this.f6574e;
        if (i == 0) {
            i = m4616a().m4628k(requireContext2);
        }
        Dialog dialog = new Dialog(requireContext, i);
        Context context = dialog.getContext();
        this.f6581l = m4614d(context);
        int m73c = C5070b.m73c(context, 2130968849, C1753o.class.getCanonicalName());
        C0822f c0822f = new C0822f(C0827i.m7304b(context, null, 2130969293, 2131887083).m7299a());
        this.f6585p = c0822f;
        c0822f.f3010a.f3035b = new C4285a(context);
        c0822f.m7307x();
        this.f6585p.m7314q(ColorStateList.valueOf(m73c));
        C0822f c0822f2 = this.f6585p;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        c0822f2.m7315p(C3589v.C3598i.m2042i(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f6581l ? 2131493043 : 2131493042, viewGroup);
        Context context = inflate.getContext();
        if (this.f6581l) {
            inflate.findViewById(2131296818).setLayoutParams(new LinearLayout.LayoutParams(m4615c(context), -2));
        } else {
            inflate.findViewById(2131296819).setLayoutParams(new LinearLayout.LayoutParams(m4615c(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(2131296830);
        this.f6583n = textView;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3596g.m2055f(textView, 1);
        this.f6584o = (CheckableImageButton) inflate.findViewById(2131296832);
        TextView textView2 = (TextView) inflate.findViewById(2131296836);
        CharSequence charSequence = this.f6580k;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f6579j);
        }
        this.f6584o.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f6584o;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, C2788a.m3015b(context, 2131231027));
        stateListDrawable.addState(new int[0], C2788a.m3015b(context, 2131231029));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f6584o.setChecked(this.f6582m != 0);
        C3589v.m2103u(this.f6584o, null);
        m4610h(this.f6584o);
        this.f6584o.setOnClickListener(new View$OnClickListenerC1757p(this));
        this.f6586q = (Button) inflate.findViewById(2131296488);
        if (m4616a().m4626s()) {
            this.f6586q.setEnabled(true);
        } else {
            this.f6586q.setEnabled(false);
        }
        this.f6586q.setTag("CONFIRM_BUTTON_TAG");
        this.f6586q.setOnClickListener(new View$OnClickListenerC1754a());
        Button button = (Button) inflate.findViewById(2131296441);
        button.setTag("CANCEL_BUTTON_TAG");
        button.setOnClickListener(new View$OnClickListenerC1755b());
        return inflate;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f6573d.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f6574e);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f6575f);
        C1726a.C1728b c1728b = new C1726a.C1728b(this.f6577h);
        C1761s c1761s = this.f6578i.f6545e;
        if (c1761s != null) {
            c1728b.f6515c = Long.valueOf(c1761s.f6600f);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c1728b.f6516d);
        C1761s m4606c = C1761s.m4606c(c1728b.f6513a);
        C1761s m4606c2 = C1761s.m4606c(c1728b.f6514b);
        C1726a.AbstractC1729c abstractC1729c = (C1726a.AbstractC1729c) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = c1728b.f6515c;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new C1726a(m4606c, m4606c2, abstractC1729c, l == null ? null : C1761s.m4606c(l.longValue()), null));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f6579j);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f6580k);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f6581l) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f6585p);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131165673);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f6585p, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new View$OnTouchListenerC4153a(requireDialog(), rect));
        }
        m4612f();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public void onStop() {
        this.f6576g.f6617a.clear();
        super.onStop();
    }
}
