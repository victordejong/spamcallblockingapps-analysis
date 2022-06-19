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
import androidx.fragment.app.AbstractC0754s;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0722c;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p100p.View$OnTouchListenerC1910a;
import p078c.p084c.p085a.p096b.p105u.C1918b;
import p078c.p084c.p085a.p096b.p108x.C1938h;
/* renamed from: com.google.android.material.datepicker.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/f.class */
public final class C8106f<S> extends DialogInterface$OnCancelListenerC0722c {

    /* renamed from: u0 */
    static final Object f36653u0 = "CONFIRM_BUTTON_TAG";

    /* renamed from: v0 */
    static final Object f36654v0 = "CANCEL_BUTTON_TAG";

    /* renamed from: w0 */
    static final Object f36655w0 = "TOGGLE_BUTTON_TAG";

    /* renamed from: B0 */
    private int f36657B0;

    /* renamed from: C0 */
    private DateSelector<S> f36658C0;

    /* renamed from: D0 */
    private AbstractC8119l<S> f36659D0;

    /* renamed from: E0 */
    private CalendarConstraints f36660E0;

    /* renamed from: F0 */
    private MaterialCalendar<S> f36661F0;

    /* renamed from: G0 */
    private int f36662G0;

    /* renamed from: H0 */
    private CharSequence f36663H0;

    /* renamed from: I0 */
    private boolean f36664I0;

    /* renamed from: J0 */
    private int f36665J0;

    /* renamed from: K0 */
    private TextView f36666K0;

    /* renamed from: L0 */
    private CheckableImageButton f36667L0;

    /* renamed from: M0 */
    private C1938h f36668M0;

    /* renamed from: N0 */
    private Button f36669N0;

    /* renamed from: x0 */
    private final LinkedHashSet<AbstractC8111g<? super S>> f36670x0 = new LinkedHashSet<>();

    /* renamed from: y0 */
    private final LinkedHashSet<View.OnClickListener> f36671y0 = new LinkedHashSet<>();

    /* renamed from: z0 */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f36672z0 = new LinkedHashSet<>();

    /* renamed from: A0 */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f36656A0 = new LinkedHashSet<>();

    /* renamed from: com.google.android.material.datepicker.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/f$a.class */
    class View$OnClickListenerC8107a implements View.OnClickListener {
        View$OnClickListenerC8107a() {
            C8106f.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = C8106f.this.f36670x0.iterator();
            while (it.hasNext()) {
                ((AbstractC8111g) it.next()).m4889a(C8106f.this.m4912B2());
            }
            C8106f.this.m32643d2();
        }
    }

    /* renamed from: com.google.android.material.datepicker.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/f$b.class */
    class View$OnClickListenerC8108b implements View.OnClickListener {
        View$OnClickListenerC8108b() {
            C8106f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = C8106f.this.f36671y0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            C8106f.this.m32643d2();
        }
    }

    /* renamed from: com.google.android.material.datepicker.f$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/f$c.class */
    public class C8109c extends AbstractC8118k<S> {
        C8109c() {
            C8106f.this = r4;
        }

        @Override // com.google.android.material.datepicker.AbstractC8118k
        /* renamed from: a */
        public void mo4864a() {
            C8106f.this.f36669N0.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.AbstractC8118k
        /* renamed from: b */
        public void mo4863b(S s) {
            C8106f.this.m4905I2();
            C8106f.this.f36669N0.setEnabled(C8106f.this.f36658C0.mo4951U());
        }
    }

    /* renamed from: com.google.android.material.datepicker.f$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/f$d.class */
    public class View$OnClickListenerC8110d implements View.OnClickListener {
        View$OnClickListenerC8110d() {
            C8106f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C8106f.this.f36669N0.setEnabled(C8106f.this.f36658C0.mo4951U());
            C8106f.this.f36667L0.toggle();
            C8106f c8106f = C8106f.this;
            c8106f.m4904J2(c8106f.f36667L0);
            C8106f.this.m4906H2();
        }
    }

    /* renamed from: A2 */
    private static int m4913A2(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1888d.mtrl_calendar_content_padding);
        int i = Month.m4975f().f36604g;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C1888d.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(C1888d.mtrl_calendar_month_horizontal_padding));
    }

    /* renamed from: C2 */
    private int m4911C2(Context context) {
        int i = this.f36657B0;
        return i != 0 ? i : this.f36658C0.mo4952Q(context);
    }

    /* renamed from: D2 */
    private void m4910D2(Context context) {
        this.f36667L0.setTag(f36655w0);
        this.f36667L0.setImageDrawable(m4892x2(context));
        this.f36667L0.setChecked(this.f36665J0 != 0);
        C1679w.m29273r0(this.f36667L0, null);
        m4904J2(this.f36667L0);
        this.f36667L0.setOnClickListener(new View$OnClickListenerC8110d());
    }

    /* renamed from: E2 */
    public static boolean m4909E2(Context context) {
        return m4907G2(context, 16843277);
    }

    /* renamed from: F2 */
    public static boolean m4908F2(Context context) {
        return m4907G2(context, C1886b.nestedScrollable);
    }

    /* renamed from: G2 */
    static boolean m4907G2(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C1918b.m28688c(context, C1886b.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: H2 */
    public void m4906H2() {
        int m4911C2 = m4911C2(m32990D1());
        this.f36661F0 = MaterialCalendar.m4992r2(this.f36658C0, m4911C2, this.f36660E0);
        this.f36659D0 = this.f36667L0.isChecked() ? C8112h.m4885c2(this.f36658C0, m4911C2, this.f36660E0) : this.f36661F0;
        m4905I2();
        AbstractC0754s m32776l = m32999A().m32776l();
        m32776l.m32495p(C1890f.mtrl_calendar_frame, this.f36659D0);
        m32776l.mo32501j();
        this.f36659D0.mo4862a2(new C8109c());
    }

    /* renamed from: I2 */
    public void m4905I2() {
        String m4890z2 = m4890z2();
        this.f36666K0.setContentDescription(String.format(m32931d0(C1894j.mtrl_picker_announce_current_selection), m4890z2));
        this.f36666K0.setText(m4890z2);
    }

    /* renamed from: J2 */
    public void m4904J2(CheckableImageButton checkableImageButton) {
        this.f36667L0.setContentDescription(this.f36667L0.isChecked() ? checkableImageButton.getContext().getString(C1894j.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C1894j.mtrl_picker_toggle_to_text_input_mode));
    }

    /* renamed from: x2 */
    private static Drawable m4892x2(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, C1433a.m30126d(context, C1889e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C1433a.m30126d(context, C1889e.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* renamed from: y2 */
    private static int m4891y2(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(C1888d.mtrl_calendar_navigation_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1888d.mtrl_calendar_navigation_top_padding);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(C1888d.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C1888d.mtrl_calendar_days_of_week_height);
        int i = C8114i.f36681d;
        return dimensionPixelSize + dimensionPixelOffset + dimensionPixelOffset2 + dimensionPixelSize2 + (resources.getDimensionPixelSize(C1888d.mtrl_calendar_day_height) * i) + ((i - 1) * resources.getDimensionPixelOffset(C1888d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(C1888d.mtrl_calendar_bottom_padding);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, androidx.fragment.app.Fragment
    /* renamed from: B0 */
    public final void mo4888B0(Bundle bundle) {
        super.mo4888B0(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m32884z();
        }
        this.f36657B0 = bundle2.getInt("OVERRIDE_THEME_RES_ID");
        this.f36658C0 = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f36660E0 = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f36662G0 = bundle2.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f36663H0 = bundle2.getCharSequence("TITLE_TEXT_KEY");
        this.f36665J0 = bundle2.getInt("INPUT_MODE_KEY");
    }

    /* renamed from: B2 */
    public final S m4912B2() {
        return this.f36658C0.mo4948a0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public final View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f36664I0 ? C1892h.mtrl_picker_fullscreen : C1892h.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f36664I0) {
            inflate.findViewById(C1890f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m4913A2(context), -2));
        } else {
            View findViewById = inflate.findViewById(C1890f.mtrl_calendar_main_pane);
            View findViewById2 = inflate.findViewById(C1890f.mtrl_calendar_frame);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(m4913A2(context), -1));
            findViewById2.setMinimumHeight(m4891y2(m32990D1()));
        }
        TextView textView = (TextView) inflate.findViewById(C1890f.mtrl_picker_header_selection_text);
        this.f36666K0 = textView;
        C1679w.m29269t0(textView, 1);
        this.f36667L0 = (CheckableImageButton) inflate.findViewById(C1890f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(C1890f.mtrl_picker_title_text);
        CharSequence charSequence = this.f36663H0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f36662G0);
        }
        m4910D2(context);
        this.f36669N0 = (Button) inflate.findViewById(C1890f.confirm_button);
        if (this.f36658C0.mo4951U()) {
            this.f36669N0.setEnabled(true);
        } else {
            this.f36669N0.setEnabled(false);
        }
        this.f36669N0.setTag(f36653u0);
        this.f36669N0.setOnClickListener(new View$OnClickListenerC8107a());
        Button button = (Button) inflate.findViewById(C1890f.cancel_button);
        button.setTag(f36654v0);
        button.setOnClickListener(new View$OnClickListenerC8108b());
        return inflate;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, androidx.fragment.app.Fragment
    /* renamed from: Z0 */
    public final void mo4886Z0(Bundle bundle) {
        super.mo4886Z0(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f36657B0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f36658C0);
        CalendarConstraints.C8074b c8074b = new CalendarConstraints.C8074b(this.f36660E0);
        if (this.f36661F0.m4996n2() != null) {
            c8074b.m5019b(this.f36661F0.m4996n2().f36606i);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c8074b.m5020a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f36662G0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f36663H0);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, androidx.fragment.app.Fragment
    /* renamed from: a1 */
    public void mo4903a1() {
        super.mo4903a1();
        Window window = m32635l2().getWindow();
        if (this.f36664I0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f36668M0);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = m32941X().getDimensionPixelOffset(C1888d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f36668M0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new View$OnTouchListenerC1910a(m32635l2(), rect));
        }
        m4906H2();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, androidx.fragment.app.Fragment
    /* renamed from: b1 */
    public void mo4902b1() {
        this.f36659D0.m4861b2();
        super.mo4902b1();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c
    /* renamed from: h2 */
    public final Dialog mo4901h2(Bundle bundle) {
        Dialog dialog = new Dialog(m32990D1(), m4911C2(m32990D1()));
        Context context = dialog.getContext();
        this.f36664I0 = m4909E2(context);
        int m28688c = C1918b.m28688c(context, C1886b.colorSurface, C8106f.class.getCanonicalName());
        C1938h c1938h = new C1938h(context, null, C1886b.materialCalendarStyle, C1895k.Widget_MaterialComponents_MaterialCalendar);
        this.f36668M0 = c1938h;
        c1938h.m28636P(context);
        this.f36668M0.m28625a0(ColorStateList.valueOf(m28688c));
        this.f36668M0.m28626Z(C1679w.m29264w(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f36672z0.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f36656A0.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) m32928f0();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    /* renamed from: z2 */
    public String m4890z2() {
        return this.f36658C0.mo4943p(m32996B());
    }
}
