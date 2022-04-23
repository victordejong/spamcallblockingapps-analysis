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
import androidx.fragment.app.c;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.k.h;
import com.google.android.material.timepicker.TimePickerView;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/b.class */
public final class b extends c {
    private TimePickerView g;
    private LinearLayout h;
    private ViewStub i;
    private d j;
    private g k;
    private e l;
    private int m;
    private int n;
    private String p;
    private MaterialButton q;
    private TimeModel s;

    /* renamed from: c  reason: collision with root package name */
    private final Set<View.OnClickListener> f30973c = new LinkedHashSet();

    /* renamed from: d  reason: collision with root package name */
    private final Set<View.OnClickListener> f30974d = new LinkedHashSet();
    private final Set<DialogInterface.OnCancelListener> e = new LinkedHashSet();
    private final Set<DialogInterface.OnDismissListener> f = new LinkedHashSet();
    private int o = 0;
    private int r = 0;

    private e a(int i) {
        if (i == 0) {
            d dVar = this.j;
            d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new d(this.g, this.s);
            }
            this.j = dVar2;
            return dVar2;
        }
        if (this.k == null) {
            LinearLayout linearLayout = (LinearLayout) this.i.inflate();
            this.h = linearLayout;
            this.k = new g(linearLayout, this.s);
        }
        this.k.d();
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaterialButton materialButton) {
        e eVar = this.l;
        if (eVar != null) {
            eVar.c();
        }
        e a2 = a(this.r);
        this.l = a2;
        a2.b();
        this.l.a();
        Pair<Integer, Integer> b2 = b(this.r);
        materialButton.setIconResource(((Integer) b2.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) b2.second).intValue()));
    }

    private Pair<Integer, Integer> b(int i) {
        if (i == 0) {
            return new Pair<>(Integer.valueOf(this.m), Integer.valueOf(a.j.material_timepicker_text_input_mode_description));
        }
        if (i == 1) {
            return new Pair<>(Integer.valueOf(this.n), Integer.valueOf(a.j.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: ".concat(String.valueOf(i)));
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        TypedValue a2 = com.google.android.material.h.b.a(requireContext(), a.b.materialTimePickerTheme);
        Dialog dialog = new Dialog(requireContext(), a2 == null ? 0 : a2.data);
        Context context = dialog.getContext();
        int a3 = com.google.android.material.h.b.a(context, a.b.colorSurface, b.class.getCanonicalName());
        h hVar = new h(context, null, a.b.materialTimePickerStyle, a.k.Widget_MaterialComponents_TimePicker);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, a.l.MaterialTimePicker, a.b.materialTimePickerStyle, a.k.Widget_MaterialComponents_TimePicker);
        this.n = obtainStyledAttributes.getResourceId(a.l.MaterialTimePicker_clockIcon, 0);
        this.m = obtainStyledAttributes.getResourceId(a.l.MaterialTimePicker_keyboardIcon, 0);
        obtainStyledAttributes.recycle();
        hVar.a(context);
        hVar.g(ColorStateList.valueOf(a3));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(hVar);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        return dialog;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        for (DialogInterface.OnCancelListener onCancelListener : this.e) {
            onCancelListener.onCancel(dialogInterface);
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
        if (bundle2 != null) {
            TimeModel timeModel = (TimeModel) bundle2.getParcelable("TIME_PICKER_TIME_MODEL");
            this.s = timeModel;
            if (timeModel == null) {
                this.s = new TimeModel();
            }
            this.r = bundle2.getInt("TIME_PICKER_INPUT_MODE", 0);
            this.o = bundle2.getInt("TIME_PICKER_TITLE_RES", 0);
            this.p = bundle2.getString("TIME_PICKER_TITLE_TEXT");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(a.h.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(a.f.material_timepicker_view);
        this.g = timePickerView;
        timePickerView.e = new TimePickerView.a() { // from class: com.google.android.material.timepicker.b.1
            @Override // com.google.android.material.timepicker.TimePickerView.a
            public final void a() {
                boolean z = true;
                b.this.r = 1;
                b bVar = b.this;
                bVar.a(bVar.q);
                g gVar = b.this.k;
                gVar.f30989b.setChecked(gVar.f30988a.selection == 12);
                ChipTextInputComboView chipTextInputComboView = gVar.f30990c;
                if (gVar.f30988a.selection != 10) {
                    z = false;
                }
                chipTextInputComboView.setChecked(z);
            }
        };
        this.i = (ViewStub) viewGroup2.findViewById(a.f.material_textinput_timepicker);
        this.q = (MaterialButton) viewGroup2.findViewById(a.f.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(a.f.header_title);
        if (!TextUtils.isEmpty(this.p)) {
            textView.setText(this.p);
        }
        int i = this.o;
        if (i != 0) {
            textView.setText(i);
        }
        a(this.q);
        ((Button) viewGroup2.findViewById(a.f.material_timepicker_ok_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                for (View.OnClickListener onClickListener : b.this.f30973c) {
                    onClickListener.onClick(view);
                }
                b.this.a();
            }
        });
        ((Button) viewGroup2.findViewById(a.f.material_timepicker_cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                for (View.OnClickListener onClickListener : b.this.f30974d) {
                    onClickListener.onClick(view);
                }
                b.this.a();
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.b.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b bVar = b.this;
                bVar.r = bVar.r == 0 ? 1 : 0;
                b bVar2 = b.this;
                bVar2.a(bVar2.q);
            }
        });
        return viewGroup2;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        for (DialogInterface.OnDismissListener onDismissListener : this.f) {
            onDismissListener.onDismiss(dialogInterface);
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
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.s);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.r);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.o);
        bundle.putString("TIME_PICKER_TITLE_TEXT", this.p);
    }
}
