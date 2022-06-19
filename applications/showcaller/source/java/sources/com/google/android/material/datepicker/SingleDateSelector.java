package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
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
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.p105u.C1918b;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/SingleDateSelector.class */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new C8098b();

    /* renamed from: d */
    private Long f36622d;

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/SingleDateSelector$a.class */
    class C8097a extends AbstractC8101c {

        /* renamed from: j */
        final /* synthetic */ AbstractC8118k f36623j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8097a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, AbstractC8118k abstractC8118k) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            SingleDateSelector.this = r7;
            this.f36623j = abstractC8118k;
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: e */
        void mo4931e() {
            this.f36623j.mo4864a();
        }

        @Override // com.google.android.material.datepicker.AbstractC8101c
        /* renamed from: f */
        void mo4930f(Long l) {
            if (l == null) {
                SingleDateSelector.this.m4946c();
            } else {
                SingleDateSelector.this.mo4944i0(l.longValue());
            }
            this.f36623j.mo4863b(SingleDateSelector.this.mo4948a0());
        }
    }

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/SingleDateSelector$b.class */
    static final class C8098b implements Parcelable.Creator<SingleDateSelector> {
        C8098b() {
        }

        /* renamed from: a */
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f36622d = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        /* renamed from: b */
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    /* renamed from: c */
    public void m4946c() {
        this.f36622d = null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: L */
    public View mo4953L(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, AbstractC8118k<Long> abstractC8118k) {
        View inflate = layoutInflater.inflate(C1892h.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C1890f.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (C8178d.m4553a()) {
            editText.setInputType(17);
        }
        SimpleDateFormat m4845k = C8123o.m4845k();
        String m4844l = C8123o.m4844l(inflate.getResources(), m4845k);
        textInputLayout.setPlaceholderText(m4844l);
        Long l = this.f36622d;
        if (l != null) {
            editText.setText(m4845k.format(l));
        }
        editText.addTextChangedListener(new C8097a(m4844l, m4845k, textInputLayout, calendarConstraints, abstractC8118k));
        C8209q.m4442k(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: Q */
    public int mo4952Q(Context context) {
        return C1918b.m28688c(context, C1886b.materialCalendarTheme, C8106f.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: U */
    public boolean mo4951U() {
        return this.f36622d != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: W */
    public Collection<Long> mo4950W() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f36622d;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    /* renamed from: d */
    public Long mo4948a0() {
        return this.f36622d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: i0 */
    public void mo4944i0(long j) {
        this.f36622d = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: p */
    public String mo4943p(Context context) {
        Resources resources = context.getResources();
        Long l = this.f36622d;
        if (l == null) {
            return resources.getString(C1894j.mtrl_picker_date_header_unselected);
        }
        return resources.getString(C1894j.mtrl_picker_date_header_selected, C8104d.m4919j(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: q */
    public Collection<C1593d<Long, Long>> mo4942q() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f36622d);
    }
}
