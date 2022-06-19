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
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.fragment.app.AbstractC0695o;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0662c;
import com.google.android.material.C4492a;
import com.google.android.material.datepicker.C4594a;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.p150h.View$OnTouchListenerC4681a;
import com.google.android.material.p156n.C4717b;
import com.google.android.material.p159q.C4736g;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* renamed from: com.google.android.material.datepicker.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/i.class */
public final class C4618i<S> extends DialogInterface$OnCancelListenerC0662c {

    /* renamed from: ae */
    static final Object f20094ae = "CONFIRM_BUTTON_TAG";

    /* renamed from: af */
    static final Object f20095af = "CANCEL_BUTTON_TAG";

    /* renamed from: ag */
    static final Object f20096ag = "TOGGLE_BUTTON_TAG";

    /* renamed from: ah */
    private final LinkedHashSet<AbstractC4623j<? super S>> f20097ah = new LinkedHashSet<>();

    /* renamed from: ai */
    private final LinkedHashSet<View.OnClickListener> f20098ai = new LinkedHashSet<>();

    /* renamed from: aj */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f20099aj = new LinkedHashSet<>();

    /* renamed from: ak */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f20100ak = new LinkedHashSet<>();

    /* renamed from: al */
    private int f20101al;

    /* renamed from: am */
    private AbstractC4600d<S> f20102am;

    /* renamed from: an */
    private AbstractC4633p<S> f20103an;

    /* renamed from: ao */
    private C4594a f20104ao;

    /* renamed from: ap */
    private C4605h<S> f20105ap;

    /* renamed from: aq */
    private int f20106aq;

    /* renamed from: ar */
    private CharSequence f20107ar;

    /* renamed from: as */
    private boolean f20108as;

    /* renamed from: at */
    private TextView f20109at;

    /* renamed from: au */
    private CheckableImageButton f20110au;

    /* renamed from: av */
    private C4736g f20111av;

    /* renamed from: aw */
    private Button f20112aw;

    /* renamed from: a */
    public void m3171a(CheckableImageButton checkableImageButton) {
        this.f20110au.setContentDescription(this.f20110au.isChecked() ? checkableImageButton.getContext().getString(C4492a.C4502j.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C4492a.C4502j.mtrl_picker_toggle_to_text_input_mode));
    }

    /* renamed from: as */
    public static long m3170as() {
        return C4626l.m3146a().f20124e;
    }

    /* renamed from: av */
    public void m3167av() {
        String m3169at = m3169at();
        this.f20109at.setContentDescription(String.format(m19959b(C4492a.C4502j.mtrl_picker_announce_current_selection), m3169at));
        this.f20109at.setText(m3169at);
    }

    /* renamed from: aw */
    public void m3166aw() {
        this.f20105ap = C4605h.m3195a(this.f20102am, m3163c(m19923q()), this.f20104ao);
        this.f20103an = this.f20110au.isChecked() ? C4624k.m3148a(this.f20102am, this.f20104ao) : this.f20105ap;
        m3167av();
        AbstractC0695o mo19803a = m19916x().mo19803a();
        mo19803a.m19656b(C4492a.C4498f.mtrl_calendar_frame, this.f20103an);
        mo19803a.mo19651d();
        this.f20103an.m3116a(new AbstractC4632o<S>() { // from class: com.google.android.material.datepicker.i.3
            @Override // com.google.android.material.datepicker.AbstractC4632o
            /* renamed from: a */
            public void mo3117a(S s) {
                C4618i.this.m3167av();
                if (C4618i.this.f20102am.m3211b()) {
                    C4618i.this.f20112aw.setEnabled(true);
                } else {
                    C4618i.this.f20112aw.setEnabled(false);
                }
            }
        });
    }

    /* renamed from: b */
    public static boolean m3165b(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C4717b.m2787a(context, C4492a.C4494b.materialCalendarStyle, C4605h.class.getCanonicalName()), new int[]{16843277});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: c */
    private int m3163c(Context context) {
        return this.f20101al != 0 ? this.f20101al : this.f20102am.m3210b(context);
    }

    /* renamed from: d */
    private void m3160d(Context context) {
        this.f20110au.setTag(f20096ag);
        this.f20110au.setImageDrawable(m3158e(context));
        C0595u.m20345a(this.f20110au, (C0549a) null);
        m3171a(this.f20110au);
        this.f20110au.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.i.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4618i.this.f20110au.toggle();
                C4618i.this.m3171a(C4618i.this.f20110au);
                C4618i.this.m3166aw();
            }
        });
    }

    /* renamed from: e */
    private static Drawable m3158e(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, C0094a.m22275b(context, C4492a.C4497e.ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C0094a.m22275b(context, C4492a.C4497e.ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* renamed from: f */
    private static int m3156f(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_calendar_navigation_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_navigation_top_padding);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_calendar_days_of_week_height);
        int i = C4628m.f20127a;
        int dimensionPixelSize3 = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_calendar_day_height);
        int i2 = C4628m.f20127a;
        return resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_bottom_padding) + dimensionPixelSize + dimensionPixelOffset + dimensionPixelOffset2 + dimensionPixelSize2 + (i * dimensionPixelSize3) + ((i2 - 1) * resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_month_vertical_padding));
    }

    /* renamed from: g */
    private static int m3154g(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_content_padding);
        int i = C4626l.m3146a().f20122c;
        return (resources.getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_month_horizontal_padding) * (i - 1)) + (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C4492a.C4496d.mtrl_calendar_day_width) * i);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f20108as ? C4492a.C4500h.mtrl_picker_fullscreen : C4492a.C4500h.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f20108as) {
            inflate.findViewById(C4492a.C4498f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m3154g(context), -2));
        } else {
            View findViewById = inflate.findViewById(C4492a.C4498f.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(C4492a.C4498f.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(m3154g(context), -1));
            findViewById2.setMinimumHeight(m3156f(m19923q()));
        }
        this.f20109at = (TextView) inflate.findViewById(C4492a.C4498f.mtrl_picker_header_selection_text);
        C0595u.m20325d(this.f20109at, 1);
        this.f20110au = (CheckableImageButton) inflate.findViewById(C4492a.C4498f.mtrl_picker_header_toggle);
        TextView textView = (TextView) inflate.findViewById(C4492a.C4498f.mtrl_picker_title_text);
        if (this.f20107ar != null) {
            textView.setText(this.f20107ar);
        } else {
            textView.setText(this.f20106aq);
        }
        m3160d(context);
        this.f20112aw = (Button) inflate.findViewById(C4492a.C4498f.confirm_button);
        if (this.f20102am.m3211b()) {
            this.f20112aw.setEnabled(true);
        } else {
            this.f20112aw.setEnabled(false);
        }
        this.f20112aw.setTag(f20094ae);
        this.f20112aw.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.i.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = C4618i.this.f20097ah.iterator();
                while (it.hasNext()) {
                    ((AbstractC4623j) it.next()).m3150a(C4618i.this.m3168au());
                }
                C4618i.this.m19895a();
            }
        });
        Button button = (Button) inflate.findViewById(C4492a.C4498f.cancel_button);
        button.setTag(f20095af);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.i.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = C4618i.this.f20098ai.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                C4618i.this.m19895a();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo3149a(Bundle bundle) {
        super.mo3149a(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m19929m();
        }
        this.f20101al = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f20102am = (AbstractC4600d) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f20104ao = (C4594a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f20106aq = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f20107ar = bundle2.getCharSequence("TITLE_TEXT_KEY");
    }

    /* renamed from: at */
    public String m3169at() {
        return this.f20102am.m3213a(m19924p());
    }

    /* renamed from: au */
    public final S m3168au() {
        return this.f20102am.m3215a();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: c */
    public final Dialog mo3162c(Bundle bundle) {
        Dialog dialog = new Dialog(m19923q(), m3163c(m19923q()));
        Context context = dialog.getContext();
        this.f20108as = m3165b(context);
        int m2787a = C4717b.m2787a(context, C4492a.C4494b.colorSurface, C4618i.class.getCanonicalName());
        this.f20111av = new C4736g(context, null, C4492a.C4494b.materialCalendarStyle, C4492a.C4503k.Widget_MaterialComponents_MaterialCalendar);
        this.f20111av.m2722a(context);
        this.f20111av.m2697f(ColorStateList.valueOf(m2787a));
        this.f20111av.m2687r(C0595u.m20310n(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: e */
    public final void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f20101al);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f20102am);
        C4594a.C4596a c4596a = new C4594a.C4596a(this.f20104ao);
        if (this.f20105ap.m3197a() != null) {
            c4596a.m3220a(this.f20105ap.m3197a().f20124e);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c4596a.m3221a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f20106aq);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f20107ar);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: i */
    public void mo3152i() {
        super.mo3152i();
        Window window = m19888f().getWindow();
        if (this.f20108as) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f20111av);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = m19919u().getDimensionPixelOffset(C4492a.C4496d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f20111av, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new View$OnTouchListenerC4681a(m19888f(), rect));
        }
        m3166aw();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: j */
    public void mo3151j() {
        this.f20103an.m3115au();
        super.mo3151j();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f20099aj.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f20100ak.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) m20016G();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }
}
