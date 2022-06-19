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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import com.google.android.material.C14376a;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.p366c.View$OnTouchListenerC14473a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p374k.C14670h;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* renamed from: com.google.android.material.datepicker.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/g.class */
public final class C14532g<S> extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: c */
    static final Object f53015c = "CONFIRM_BUTTON_TAG";

    /* renamed from: d */
    static final Object f53016d = "CANCEL_BUTTON_TAG";

    /* renamed from: e */
    static final Object f53017e = "TOGGLE_BUTTON_TAG";

    /* renamed from: f */
    DateSelector<S> f53018f;

    /* renamed from: g */
    private final LinkedHashSet<Object<? super S>> f53019g = new LinkedHashSet<>();

    /* renamed from: h */
    private final LinkedHashSet<View.OnClickListener> f53020h = new LinkedHashSet<>();

    /* renamed from: i */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f53021i = new LinkedHashSet<>();

    /* renamed from: j */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f53022j = new LinkedHashSet<>();

    /* renamed from: k */
    private int f53023k;

    /* renamed from: l */
    private AbstractC14544l<S> f53024l;

    /* renamed from: m */
    private CalendarConstraints f53025m;

    /* renamed from: n */
    private C14519f<S> f53026n;

    /* renamed from: o */
    private int f53027o;

    /* renamed from: p */
    private CharSequence f53028p;

    /* renamed from: q */
    private boolean f53029q;

    /* renamed from: r */
    private int f53030r;

    /* renamed from: s */
    private TextView f53031s;

    /* renamed from: t */
    private CheckableImageButton f53032t;

    /* renamed from: u */
    private C14670h f53033u;

    /* renamed from: v */
    private Button f53034v;

    /* renamed from: a */
    public void m10826a(CheckableImageButton checkableImageButton) {
        this.f53032t.setContentDescription(this.f53032t.isChecked() ? checkableImageButton.getContext().getString(C14376a.C14386j.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C14376a.C14386j.mtrl_picker_toggle_to_text_input_mode));
    }

    /* renamed from: a */
    public static boolean m10830a(Context context) {
        return m10829a(context, 16843277);
    }

    /* renamed from: a */
    private static boolean m10829a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C14597b.m10657a(context, C14376a.C14378b.materialCalendarStyle, C14519f.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: b */
    public static boolean m10825b(Context context) {
        return m10829a(context, C14376a.C14378b.nestedScrollable);
    }

    /* renamed from: c */
    private int m10823c(Context context) {
        int i = this.f53023k;
        return i != 0 ? i : this.f53018f.getDefaultThemeResId(context);
    }

    /* renamed from: d */
    private static int m10820d(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_content_padding);
        int i = Month.current().daysInWeek;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_month_horizontal_padding));
    }

    /* renamed from: d */
    public void m10821d() {
        String selectionDisplayString = this.f53018f.getSelectionDisplayString(getContext());
        this.f53031s.setContentDescription(String.format(getString(C14376a.C14386j.mtrl_picker_announce_current_selection), selectionDisplayString));
        this.f53031s.setText(selectionDisplayString);
    }

    /* renamed from: e */
    public void m10818e() {
        int m10823c = m10823c(requireContext());
        this.f53026n = C14519f.m10844a(this.f53018f, m10823c, this.f53025m);
        this.f53024l = this.f53032t.isChecked() ? C14537h.m10814a(this.f53018f, m10823c, this.f53025m) : this.f53026n;
        m10821d();
        AbstractC1121s m43765a = getChildFragmentManager().m43765a();
        m43765a.m43535b(C14376a.C14382f.mtrl_calendar_frame, this.f53024l, null);
        m43765a.mo43530d();
        this.f53024l.mo10802a(new AbstractC14543k<S>() { // from class: com.google.android.material.datepicker.g.3
            @Override // com.google.android.material.datepicker.AbstractC14543k
            /* renamed from: a */
            public final void mo10804a() {
                C14532g.this.f53034v.setEnabled(false);
            }

            @Override // com.google.android.material.datepicker.AbstractC14543k
            /* renamed from: a */
            public final void mo10803a(S s) {
                C14532g.this.m10821d();
                C14532g.this.f53034v.setEnabled(C14532g.this.f53018f.isSelectionComplete());
            }
        });
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m10823c(requireContext()));
        Context context = dialog.getContext();
        this.f53029q = m10829a(context, 16843277);
        int m10657a = C14597b.m10657a(context, C14376a.C14378b.colorSurface, C14532g.class.getCanonicalName());
        C14670h c14670h = new C14670h(context, null, C14376a.C14378b.materialCalendarStyle, C14376a.C14387k.Widget_MaterialComponents_MaterialCalendar);
        this.f53033u = c14670h;
        c14670h.m10479a(context);
        this.f53033u.m10456g(ColorStateList.valueOf(m10657a));
        this.f53033u.m10439r(C0926v.m44085n(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f53021i.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f53023k = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f53018f = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f53025m = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f53027o = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f53028p = bundle2.getCharSequence("TITLE_TEXT_KEY");
        this.f53030r = bundle2.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f53029q ? C14376a.C14384h.mtrl_picker_fullscreen : C14376a.C14384h.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f53029q) {
            inflate.findViewById(C14376a.C14382f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m10820d(context), -2));
        } else {
            View findViewById = inflate.findViewById(C14376a.C14382f.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(C14376a.C14382f.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(m10820d(context), -1));
            Resources resources = requireContext().getResources();
            findViewById2.setMinimumHeight(resources.getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_days_of_week_height) + (C14539i.f53043a * resources.getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_day_height)) + ((C14539i.f53043a - 1) * resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_bottom_padding));
        }
        TextView textView = (TextView) inflate.findViewById(C14376a.C14382f.mtrl_picker_header_selection_text);
        this.f53031s = textView;
        C0926v.m44093h(textView);
        this.f53032t = (CheckableImageButton) inflate.findViewById(C14376a.C14382f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(C14376a.C14382f.mtrl_picker_title_text);
        CharSequence charSequence = this.f53028p;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f53027o);
        }
        this.f53032t.setTag(f53017e);
        CheckableImageButton checkableImageButton = this.f53032t;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, C0153a.m46374b(context, C14376a.C14381e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C0153a.m46374b(context, C14376a.C14381e.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f53032t.setChecked(this.f53030r != 0);
        C0926v.m44123a(this.f53032t, (C0865a) null);
        m10826a(this.f53032t);
        this.f53032t.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14532g.this.f53034v.setEnabled(C14532g.this.f53018f.isSelectionComplete());
                C14532g.this.f53032t.toggle();
                C14532g c14532g = C14532g.this;
                c14532g.m10826a(c14532g.f53032t);
                C14532g.this.m10818e();
            }
        });
        this.f53034v = (Button) inflate.findViewById(C14376a.C14382f.confirm_button);
        if (this.f53018f.isSelectionComplete()) {
            this.f53034v.setEnabled(true);
        } else {
            this.f53034v.setEnabled(false);
        }
        this.f53034v.setTag(f53015c);
        this.f53034v.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Iterator it2 = C14532g.this.f53019g.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    C14532g.this.f53018f.getSelection();
                }
                C14532g.this.mo11082a();
            }
        });
        Button button = (Button) inflate.findViewById(C14376a.C14382f.cancel_button);
        button.setTag(f53016d);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Iterator it2 = C14532g.this.f53020h.iterator();
                while (it2.hasNext()) {
                    ((View.OnClickListener) it2.next()).onClick(view);
                }
                C14532g.this.mo11082a();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f53022j.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f53023k);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f53018f);
        CalendarConstraints.C14498a c14498a = new CalendarConstraints.C14498a(this.f53025m);
        if (this.f53026n.f52986g != null) {
            c14498a.f52937e = Long.valueOf(this.f53026n.f52986g.timeInMillis);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c14498a.f52938f);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(Month.create(c14498a.f52935c), Month.create(c14498a.f52936d), (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY"), c14498a.f52937e == null ? null : Month.create(c14498a.f52937e.longValue())));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f53027o);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f53028p);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Window window = m43624v_().getWindow();
        if (this.f53029q) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f53033u);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f53033u, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new View$OnTouchListenerC14473a(m43624v_(), rect));
        }
        m10818e();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onStop() {
        this.f53024l.m10801b();
        super.onStop();
    }
}
