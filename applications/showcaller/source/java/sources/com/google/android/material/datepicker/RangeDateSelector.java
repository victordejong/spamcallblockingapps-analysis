package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.internal.C8178d;
import com.google.android.material.internal.C8209q;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import p020b.p041h.p049k.C1593d;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.p105u.C1918b;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector.class */
public class RangeDateSelector implements DateSelector<C1593d<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new C8096c();

    /* renamed from: d */
    private String f36608d;

    /* renamed from: e */
    private final String f36609e = " ";

    /* renamed from: f */
    private Long f36610f = null;

    /* renamed from: g */
    private Long f36611g = null;

    /* renamed from: h */
    private Long f36612h = null;

    /* renamed from: i */
    private Long f36613i = null;

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector$a.class */
    class C8094a extends AbstractC8101c {

        /* renamed from: j */
        final /* synthetic */ TextInputLayout f36614j;

        /* renamed from: k */
        final /* synthetic */ TextInputLayout f36615k;

        /* renamed from: l */
        final /* synthetic */ AbstractC8118k f36616l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8094a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, AbstractC8118k abstractC8118k) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            RangeDateSelector.this = r7;
            this.f36614j = textInputLayout2;
            this.f36615k = textInputLayout3;
            this.f36616l = abstractC8118k;
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: e */
        void mo4931e() {
            RangeDateSelector.this.f36612h = null;
            RangeDateSelector.this.m4956j(this.f36614j, this.f36615k, this.f36616l);
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: f */
        void mo4930f(Long l) {
            RangeDateSelector.this.f36612h = l;
            RangeDateSelector.this.m4956j(this.f36614j, this.f36615k, this.f36616l);
        }
    }

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector$b.class */
    class C8095b extends AbstractC8101c {

        /* renamed from: j */
        final /* synthetic */ TextInputLayout f36618j;

        /* renamed from: k */
        final /* synthetic */ TextInputLayout f36619k;

        /* renamed from: l */
        final /* synthetic */ AbstractC8118k f36620l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8095b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, AbstractC8118k abstractC8118k) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            RangeDateSelector.this = r7;
            this.f36618j = textInputLayout2;
            this.f36619k = textInputLayout3;
            this.f36620l = abstractC8118k;
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: e */
        void mo4931e() {
            RangeDateSelector.this.f36613i = null;
            RangeDateSelector.this.m4956j(this.f36618j, this.f36619k, this.f36620l);
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: f */
        void mo4930f(Long l) {
            RangeDateSelector.this.f36613i = l;
            RangeDateSelector.this.m4956j(this.f36618j, this.f36619k, this.f36620l);
        }
    }

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector$c.class */
    static final class C8096c implements Parcelable.Creator<RangeDateSelector> {
        C8096c() {
        }

        /* renamed from: a */
        public RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f36610f = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f36611g = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        /* renamed from: b */
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    /* renamed from: f */
    private void m4960f(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f36608d.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    /* renamed from: h */
    private boolean m4958h(long j, long j2) {
        return j <= j2;
    }

    /* renamed from: i */
    private void m4957i(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f36608d);
        textInputLayout2.setError(" ");
    }

    /* renamed from: j */
    public void m4956j(TextInputLayout textInputLayout, TextInputLayout textInputLayout2, AbstractC8118k<C1593d<Long, Long>> abstractC8118k) {
        Long l = this.f36612h;
        if (l == null || this.f36613i == null) {
            m4960f(textInputLayout, textInputLayout2);
            abstractC8118k.mo4864a();
        } else if (!m4958h(l.longValue(), this.f36613i.longValue())) {
            m4957i(textInputLayout, textInputLayout2);
            abstractC8118k.mo4864a();
        } else {
            this.f36610f = this.f36612h;
            this.f36611g = this.f36613i;
            abstractC8118k.mo4863b(mo4948a0());
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: L */
    public View mo4953L(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, AbstractC8118k<C1593d<Long, Long>> abstractC8118k) {
        View inflate = layoutInflater.inflate(C1892h.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C1890f.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(C1890f.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (C8178d.m4553a()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f36608d = inflate.getResources().getString(C1894j.mtrl_picker_invalid_range);
        SimpleDateFormat m4845k = C8123o.m4845k();
        Long l = this.f36610f;
        if (l != null) {
            editText.setText(m4845k.format(l));
            this.f36612h = this.f36610f;
        }
        Long l2 = this.f36611g;
        if (l2 != null) {
            editText2.setText(m4845k.format(l2));
            this.f36613i = this.f36611g;
        }
        String m4844l = C8123o.m4844l(inflate.getResources(), m4845k);
        textInputLayout.setPlaceholderText(m4844l);
        textInputLayout2.setPlaceholderText(m4844l);
        editText.addTextChangedListener(new C8094a(m4844l, m4845k, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, abstractC8118k));
        editText2.addTextChangedListener(new C8095b(m4844l, m4845k, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, abstractC8118k));
        C8209q.m4442k(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: Q */
    public int mo4952Q(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return C1918b.m28688c(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(C1888d.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? C1886b.materialCalendarTheme : C1886b.materialCalendarFullscreenTheme, C8106f.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: U */
    public boolean mo4951U() {
        Long l = this.f36610f;
        return (l == null || this.f36611g == null || !m4958h(l.longValue(), this.f36611g.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: W */
    public Collection<Long> mo4950W() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f36610f;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.f36611g;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public C1593d<Long, Long> mo4948a0() {
        return new C1593d<>(this.f36610f, this.f36611g);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: i0 */
    public void mo4944i0(long j) {
        Long l = this.f36610f;
        if (l == null) {
            this.f36610f = Long.valueOf(j);
        } else if (this.f36611g == null && m4958h(l.longValue(), j)) {
            this.f36611g = Long.valueOf(j);
        } else {
            this.f36611g = null;
            this.f36610f = Long.valueOf(j);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: p */
    public String mo4943p(Context context) {
        Resources resources = context.getResources();
        Long l = this.f36610f;
        if (l == null && this.f36611g == null) {
            return resources.getString(C1894j.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.f36611g;
        if (l2 == null) {
            return resources.getString(C1894j.mtrl_picker_range_header_only_start_selected, C8104d.m4926c(l.longValue()));
        }
        if (l == null) {
            return resources.getString(C1894j.mtrl_picker_range_header_only_end_selected, C8104d.m4926c(l2.longValue()));
        }
        C1593d<String, String> m4928a = C8104d.m4928a(l, l2);
        return resources.getString(C1894j.mtrl_picker_range_header_selected, m4928a.f6187a, m4928a.f6188b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: q */
    public Collection<C1593d<Long, Long>> mo4942q() {
        if (this.f36610f == null || this.f36611g == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C1593d(this.f36610f, this.f36611g));
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f36610f);
        parcel.writeValue(this.f36611g);
    }
}
