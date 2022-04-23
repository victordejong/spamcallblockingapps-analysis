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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.C1027R;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialDatePicker.class */
public final class MaterialDatePicker<S> extends DialogFragment {

    /* renamed from: w */
    static final Object f10559w = "CONFIRM_BUTTON_TAG";

    /* renamed from: x */
    static final Object f10560x = "CANCEL_BUTTON_TAG";

    /* renamed from: y */
    static final Object f10561y = "TOGGLE_BUTTON_TAG";

    /* renamed from: f */
    private final LinkedHashSet<MaterialPickerOnPositiveButtonClickListener<? super S>> f10562f = new LinkedHashSet<>();

    /* renamed from: g */
    private final LinkedHashSet<View.OnClickListener> f10563g = new LinkedHashSet<>();

    /* renamed from: h */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f10564h = new LinkedHashSet<>();

    /* renamed from: i */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f10565i = new LinkedHashSet<>();
    @StyleRes

    /* renamed from: j */
    private int f10566j;
    @Nullable

    /* renamed from: k */
    private DateSelector<S> f10567k;

    /* renamed from: l */
    private PickerFragment<S> f10568l;
    @Nullable

    /* renamed from: m */
    private CalendarConstraints f10569m;

    /* renamed from: n */
    private MaterialCalendar<S> f10570n;
    @StringRes

    /* renamed from: o */
    private int f10571o;

    /* renamed from: p */
    private CharSequence f10572p;

    /* renamed from: q */
    private boolean f10573q;

    /* renamed from: r */
    private int f10574r;

    /* renamed from: s */
    private TextView f10575s;

    /* renamed from: t */
    private CheckableImageButton f10576t;
    @Nullable

    /* renamed from: u */
    private MaterialShapeDrawable f10577u;

    /* renamed from: v */
    private Button f10578v;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialDatePicker$Builder.class */
    public static final class Builder<S> {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialDatePicker$InputMode.class */
    public @interface InputMode {
    }

    @NonNull
    /* renamed from: O0 */
    private static Drawable m9932O0(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, AppCompatResources.m22069d(context, C1027R.C1029drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.m22069d(context, C1027R.C1029drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* renamed from: P0 */
    private static int m9931P0(@NonNull Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(C1027R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(C1027R.dimen.mtrl_calendar_days_of_week_height) + (MonthAdapter.f10595j * resources.getDimensionPixelSize(C1027R.dimen.mtrl_calendar_day_height)) + ((MonthAdapter.f10595j - 1) * resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_bottom_padding);
    }

    /* renamed from: R0 */
    private static int m9929R0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_content_padding);
        int i = Month.m9915g().f10592j;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C1027R.dimen.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_month_horizontal_padding));
    }

    /* renamed from: T0 */
    private int m9927T0(Context context) {
        int i = this.f10566j;
        return i != 0 ? i : this.f10567k.mo9873V(context);
    }

    /* renamed from: U0 */
    private void m9926U0(Context context) {
        this.f10576t.setTag(f10561y);
        this.f10576t.setImageDrawable(m9932O0(context));
        this.f10576t.setChecked(this.f10574r != 0);
        ViewCompat.m19183n0(this.f10576t, null);
        m9921Z0(this.f10576t);
        this.f10576t.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialDatePicker.this.f10578v.setEnabled(MaterialDatePicker.this.f10567k.mo9872Z());
                MaterialDatePicker.this.f10576t.toggle();
                MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
                materialDatePicker.m9921Z0(materialDatePicker.f10576t);
                MaterialDatePicker.this.m9924W0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V0 */
    public static boolean m9925V0(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.m9396c(context, C1027R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{16843277});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W0 */
    public void m9924W0() {
        this.f10570n = MaterialCalendar.m9952X0(this.f10567k, m9927T0(requireContext()), this.f10569m);
        this.f10568l = this.f10576t.isChecked() ? MaterialTextInputPicker.m9919I0(this.f10567k, this.f10569m) : this.f10570n;
        m9922Y0();
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.m18330r(C1027R.C1030id.mtrl_calendar_frame, this.f10568l);
        beginTransaction.mo18337k();
        this.f10568l.m9888G0(new OnSelectionChangedListener<S>() { // from class: com.google.android.material.datepicker.MaterialDatePicker.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            /* renamed from: a */
            public void mo9890a() {
                MaterialDatePicker.this.f10578v.setEnabled(false);
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            /* renamed from: b */
            public void mo9889b(S s) {
                MaterialDatePicker.this.m9922Y0();
                MaterialDatePicker.this.f10578v.setEnabled(MaterialDatePicker.this.f10567k.mo9872Z());
            }
        });
    }

    /* renamed from: X0 */
    public static long m9923X0() {
        return Month.m9915g().f10594l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y0 */
    public void m9922Y0() {
        String Q0 = m9930Q0();
        this.f10575s.setContentDescription(String.format(getString(C1027R.string.mtrl_picker_announce_current_selection), Q0));
        this.f10575s.setText(Q0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z0 */
    public void m9921Z0(@NonNull CheckableImageButton checkableImageButton) {
        this.f10576t.setContentDescription(this.f10576t.isChecked() ? checkableImageButton.getContext().getString(C1027R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C1027R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    /* renamed from: Q0 */
    public String m9930Q0() {
        return this.f10567k.mo9864p(getContext());
    }

    @Nullable
    /* renamed from: S0 */
    public final S m9928S0() {
        return this.f10567k.mo9866i0();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f10564h.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f10566j = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f10567k = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f10569m = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f10571o = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f10572p = bundle2.getCharSequence("TITLE_TEXT_KEY");
        this.f10574r = bundle2.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m9927T0(requireContext()));
        Context context = dialog.getContext();
        this.f10573q = m9925V0(context);
        int c = MaterialAttributes.m9396c(context, C1027R.attr.colorSurface, MaterialDatePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, C1027R.attr.materialCalendarStyle, C1027R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f10577u = materialShapeDrawable;
        materialShapeDrawable.m9338M(context);
        this.f10577u.m9328W(ColorStateList.valueOf(c));
        this.f10577u.m9329V(ViewCompat.m19168v(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f10573q ? C1027R.layout.mtrl_picker_fullscreen : C1027R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f10573q) {
            inflate.findViewById(C1027R.C1030id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m9929R0(context), -2));
        } else {
            View findViewById = inflate.findViewById(C1027R.C1030id.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(C1027R.C1030id.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(m9929R0(context), -1));
            findViewById2.setMinimumHeight(m9931P0(requireContext()));
        }
        TextView textView = (TextView) inflate.findViewById(C1027R.C1030id.mtrl_picker_header_selection_text);
        this.f10575s = textView;
        ViewCompat.m19179p0(textView, 1);
        this.f10576t = (CheckableImageButton) inflate.findViewById(C1027R.C1030id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(C1027R.C1030id.mtrl_picker_title_text);
        CharSequence charSequence = this.f10572p;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f10571o);
        }
        m9926U0(context);
        this.f10578v = (Button) inflate.findViewById(C1027R.C1030id.confirm_button);
        if (this.f10567k.mo9872Z()) {
            this.f10578v.setEnabled(true);
        } else {
            this.f10578v.setEnabled(false);
        }
        this.f10578v.setTag(f10559w);
        this.f10578v.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialDatePicker.this.f10562f.iterator();
                while (it.hasNext()) {
                    ((MaterialPickerOnPositiveButtonClickListener) it.next()).m9920a(MaterialDatePicker.this.m9928S0());
                }
                MaterialDatePicker.this.dismiss();
            }
        });
        Button button = (Button) inflate.findViewById(C1027R.C1030id.cancel_button);
        button.setTag(f10560x);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialDatePicker.this.f10563g.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                MaterialDatePicker.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f10565i.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f10566j);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f10567k);
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder(this.f10569m);
        if (this.f10570n.m9956T0() != null) {
            builder.m9994b(this.f10570n.m9956T0().f10594l);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", builder.m9995a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f10571o);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f10572p);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f10573q) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f10577u);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f10577u, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        m9924W0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f10568l.m9887H0();
        super.onStop();
    }
}
