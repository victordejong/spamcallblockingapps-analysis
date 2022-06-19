package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import com.google.android.material.C14376a;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.timepicker.TimePickerView;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.google.android.material.timepicker.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/b.class */
public final class C14847b extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: g */
    private TimePickerView f54221g;

    /* renamed from: h */
    private LinearLayout f54222h;

    /* renamed from: i */
    private ViewStub f54223i;

    /* renamed from: j */
    private C14853d f54224j;

    /* renamed from: k */
    private C14856g f54225k;

    /* renamed from: l */
    private AbstractC14854e f54226l;

    /* renamed from: m */
    private int f54227m;

    /* renamed from: n */
    private int f54228n;

    /* renamed from: p */
    private String f54230p;

    /* renamed from: q */
    private MaterialButton f54231q;

    /* renamed from: s */
    private TimeModel f54233s;

    /* renamed from: c */
    private final Set<View.OnClickListener> f54217c = new LinkedHashSet();

    /* renamed from: d */
    private final Set<View.OnClickListener> f54218d = new LinkedHashSet();

    /* renamed from: e */
    private final Set<DialogInterface.OnCancelListener> f54219e = new LinkedHashSet();

    /* renamed from: f */
    private final Set<DialogInterface.OnDismissListener> f54220f = new LinkedHashSet();

    /* renamed from: o */
    private int f54229o = 0;

    /* renamed from: r */
    private int f54232r = 0;

    /* renamed from: a */
    private AbstractC14854e m9885a(int i) {
        if (i == 0) {
            C14853d c14853d = this.f54224j;
            C14853d c14853d2 = c14853d;
            if (c14853d == null) {
                c14853d2 = new C14853d(this.f54221g, this.f54233s);
            }
            this.f54224j = c14853d2;
            return c14853d2;
        }
        if (this.f54225k == null) {
            LinearLayout linearLayout = (LinearLayout) this.f54223i.inflate();
            this.f54222h = linearLayout;
            this.f54225k = new C14856g(linearLayout, this.f54233s);
        }
        this.f54225k.m9857d();
        return this.f54225k;
    }

    /* renamed from: a */
    public void m9883a(MaterialButton materialButton) {
        AbstractC14854e abstractC14854e = this.f54226l;
        if (abstractC14854e != null) {
            abstractC14854e.mo9858c();
        }
        AbstractC14854e m9885a = m9885a(this.f54232r);
        this.f54226l = m9885a;
        m9885a.mo9859b();
        this.f54226l.mo9863a();
        Pair<Integer, Integer> m9879b = m9879b(this.f54232r);
        materialButton.setIconResource(((Integer) m9879b.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) m9879b.second).intValue()));
    }

    /* renamed from: b */
    private Pair<Integer, Integer> m9879b(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("no icon for mode: ".concat(String.valueOf(i)));
            }
            return new Pair<>(Integer.valueOf(this.f54228n), Integer.valueOf(C14376a.C14386j.material_timepicker_clock_mode_description));
        }
        return new Pair<>(Integer.valueOf(this.f54227m), Integer.valueOf(C14376a.C14386j.material_timepicker_text_input_mode_description));
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        TypedValue m10658a = C14597b.m10658a(requireContext(), C14376a.C14378b.materialTimePickerTheme);
        Dialog dialog = new Dialog(requireContext(), m10658a == null ? 0 : m10658a.data);
        Context context = dialog.getContext();
        int m10657a = C14597b.m10657a(context, C14376a.C14378b.colorSurface, C14847b.class.getCanonicalName());
        C14670h c14670h = new C14670h(context, null, C14376a.C14378b.materialTimePickerStyle, C14376a.C14387k.Widget_MaterialComponents_TimePicker);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C14376a.C14388l.MaterialTimePicker, C14376a.C14378b.materialTimePickerStyle, C14376a.C14387k.Widget_MaterialComponents_TimePicker);
        this.f54228n = obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialTimePicker_clockIcon, 0);
        this.f54227m = obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialTimePicker_keyboardIcon, 0);
        obtainStyledAttributes.recycle();
        c14670h.m10479a(context);
        c14670h.m10456g(ColorStateList.valueOf(m10657a));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(c14670h);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        for (DialogInterface.OnCancelListener onCancelListener : this.f54219e) {
            onCancelListener.onCancel(dialogInterface);
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
        if (bundle2 != null) {
            TimeModel timeModel = (TimeModel) bundle2.getParcelable("TIME_PICKER_TIME_MODEL");
            this.f54233s = timeModel;
            if (timeModel == null) {
                this.f54233s = new TimeModel();
            }
            this.f54232r = bundle2.getInt("TIME_PICKER_INPUT_MODE", 0);
            this.f54229o = bundle2.getInt("TIME_PICKER_TITLE_RES", 0);
            this.f54230p = bundle2.getString("TIME_PICKER_TITLE_TEXT");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(C14376a.C14384h.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(C14376a.C14382f.material_timepicker_view);
        this.f54221g = timePickerView;
        timePickerView.f54206e = new TimePickerView.AbstractC14843a() { // from class: com.google.android.material.timepicker.b.1
            @Override // com.google.android.material.timepicker.TimePickerView.AbstractC14843a
            /* renamed from: a */
            public final void mo9874a() {
                C14847b.this.f54232r = 1;
                C14847b c14847b = C14847b.this;
                c14847b.m9883a(c14847b.f54231q);
                C14856g c14856g = C14847b.this.f54225k;
                c14856g.f54252b.setChecked(c14856g.f54251a.selection == 12);
                c14856g.f54253c.setChecked(c14856g.f54251a.selection == 10);
            }
        };
        this.f54223i = (ViewStub) viewGroup2.findViewById(C14376a.C14382f.material_textinput_timepicker);
        this.f54231q = (MaterialButton) viewGroup2.findViewById(C14376a.C14382f.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(C14376a.C14382f.header_title);
        if (!TextUtils.isEmpty(this.f54230p)) {
            textView.setText(this.f54230p);
        }
        int i = this.f54229o;
        if (i != 0) {
            textView.setText(i);
        }
        m9883a(this.f54231q);
        ((Button) viewGroup2.findViewById(C14376a.C14382f.material_timepicker_ok_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                for (View.OnClickListener onClickListener : C14847b.this.f54217c) {
                    onClickListener.onClick(view);
                }
                C14847b.this.mo11082a();
            }
        });
        ((Button) viewGroup2.findViewById(C14376a.C14382f.material_timepicker_cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                for (View.OnClickListener onClickListener : C14847b.this.f54218d) {
                    onClickListener.onClick(view);
                }
                C14847b.this.mo11082a();
            }
        });
        this.f54231q.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14847b c14847b = C14847b.this;
                c14847b.f54232r = c14847b.f54232r == 0 ? 1 : 0;
                C14847b c14847b2 = C14847b.this;
                c14847b2.m9883a(c14847b2.f54231q);
            }
        });
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        for (DialogInterface.OnDismissListener onDismissListener : this.f54220f) {
            onDismissListener.onDismiss(dialogInterface);
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
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.f54233s);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.f54232r);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.f54229o);
        bundle.putString("TIME_PICKER_TITLE_TEXT", this.f54230p);
    }
}
