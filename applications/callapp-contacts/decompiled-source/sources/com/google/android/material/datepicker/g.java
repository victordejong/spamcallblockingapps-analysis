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
import androidx.core.view.v;
import androidx.fragment.app.c;
import androidx.fragment.app.s;
import com.google.android.material.a;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.h.b;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.k.h;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/g.class */
public final class g<S> extends c {

    /* renamed from: c  reason: collision with root package name */
    static final Object f30464c = "CONFIRM_BUTTON_TAG";

    /* renamed from: d  reason: collision with root package name */
    static final Object f30465d = "CANCEL_BUTTON_TAG";
    static final Object e = "TOGGLE_BUTTON_TAG";
    DateSelector<S> f;
    private final LinkedHashSet<Object<? super S>> g = new LinkedHashSet<>();
    private final LinkedHashSet<View.OnClickListener> h = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnCancelListener> i = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnDismissListener> j = new LinkedHashSet<>();
    private int k;
    private l<S> l;
    private CalendarConstraints m;
    private f<S> n;
    private int o;
    private CharSequence p;
    private boolean q;
    private int r;
    private TextView s;
    private CheckableImageButton t;
    private h u;
    private Button v;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CheckableImageButton checkableImageButton) {
        this.t.setContentDescription(this.t.isChecked() ? checkableImageButton.getContext().getString(a.j.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(a.j.mtrl_picker_toggle_to_text_input_mode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        return a(context, 16843277);
    }

    private static boolean a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(b.a(context, a.b.materialCalendarStyle, f.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Context context) {
        return a(context, a.b.nestedScrollable);
    }

    private int c(Context context) {
        int i = this.k;
        return i != 0 ? i : this.f.getDefaultThemeResId(context);
    }

    private static int d(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(a.d.mtrl_calendar_content_padding);
        int i = Month.current().daysInWeek;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(a.d.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(a.d.mtrl_calendar_month_horizontal_padding));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String selectionDisplayString = this.f.getSelectionDisplayString(getContext());
        this.s.setContentDescription(String.format(getString(a.j.mtrl_picker_announce_current_selection), selectionDisplayString));
        this.s.setText(selectionDisplayString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int c2 = c(requireContext());
        this.n = f.a(this.f, c2, this.m);
        this.l = this.t.isChecked() ? h.a(this.f, c2, this.m) : this.n;
        d();
        s a2 = getChildFragmentManager().a();
        a2.b(a.f.mtrl_calendar_frame, this.l, null);
        a2.d();
        this.l.a(new k<S>() { // from class: com.google.android.material.datepicker.g.3
            @Override // com.google.android.material.datepicker.k
            public final void a() {
                g.this.v.setEnabled(false);
            }

            @Override // com.google.android.material.datepicker.k
            public final void a(S s) {
                g.this.d();
                g.this.v.setEnabled(g.this.f.isSelectionComplete());
            }
        });
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), c(requireContext()));
        Context context = dialog.getContext();
        this.q = a(context, 16843277);
        int a2 = b.a(context, a.b.colorSurface, g.class.getCanonicalName());
        h hVar = new h(context, null, a.b.materialCalendarStyle, a.k.Widget_MaterialComponents_MaterialCalendar);
        this.u = hVar;
        hVar.a(context);
        this.u.g(ColorStateList.valueOf(a2));
        this.u.r(v.n(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.i.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.k = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.m = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.o = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.p = bundle2.getCharSequence("TITLE_TEXT_KEY");
        this.r = bundle2.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.q ? a.h.mtrl_picker_fullscreen : a.h.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.q) {
            inflate.findViewById(a.f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(d(context), -2));
        } else {
            View findViewById = inflate.findViewById(a.f.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(a.f.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(d(context), -1));
            Resources resources = requireContext().getResources();
            findViewById2.setMinimumHeight(resources.getDimensionPixelSize(a.d.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(a.d.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(a.d.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(a.d.mtrl_calendar_days_of_week_height) + (i.f30474a * resources.getDimensionPixelSize(a.d.mtrl_calendar_day_height)) + ((i.f30474a - 1) * resources.getDimensionPixelOffset(a.d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(a.d.mtrl_calendar_bottom_padding));
        }
        TextView textView = (TextView) inflate.findViewById(a.f.mtrl_picker_header_selection_text);
        this.s = textView;
        v.h(textView);
        this.t = (CheckableImageButton) inflate.findViewById(a.f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(a.f.mtrl_picker_title_text);
        CharSequence charSequence = this.p;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.o);
        }
        this.t.setTag(e);
        CheckableImageButton checkableImageButton = this.t;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, androidx.appcompat.a.a.a.b(context, a.e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], androidx.appcompat.a.a.a.b(context, a.e.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.t.setChecked(this.r != 0);
        v.a(this.t, (androidx.core.view.a) null);
        a(this.t);
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.this.v.setEnabled(g.this.f.isSelectionComplete());
                g.this.t.toggle();
                g gVar = g.this;
                gVar.a(gVar.t);
                g.this.e();
            }
        });
        this.v = (Button) inflate.findViewById(a.f.confirm_button);
        if (this.f.isSelectionComplete()) {
            this.v.setEnabled(true);
        } else {
            this.v.setEnabled(false);
        }
        this.v.setTag(f30464c);
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Iterator it2 = g.this.g.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    g.this.f.getSelection();
                }
                g.this.a();
            }
        });
        Button button = (Button) inflate.findViewById(a.f.cancel_button);
        button.setTag(f30465d);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.g.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Iterator it2 = g.this.h.iterator();
                while (it2.hasNext()) {
                    ((View.OnClickListener) it2.next()).onClick(view);
                }
                g.this.a();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.j.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.k);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f);
        CalendarConstraints.a aVar = new CalendarConstraints.a(this.m);
        if (this.n.g != null) {
            aVar.e = Long.valueOf(this.n.g.timeInMillis);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", aVar.f);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(Month.create(aVar.f30404c), Month.create(aVar.f30405d), (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY"), aVar.e == null ? null : Month.create(aVar.e.longValue())));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.o);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.p);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Window window = v_().getWindow();
        if (this.q) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.u);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(a.d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.u, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new com.google.android.material.c.a(v_(), rect));
        }
        e();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onStop() {
        this.l.b();
        super.onStop();
    }
}
