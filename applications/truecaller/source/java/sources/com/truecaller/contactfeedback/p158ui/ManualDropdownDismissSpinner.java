package com.truecaller.contactfeedback.p158ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSpinner;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;", "Landroidx/appcompat/widget/AppCompatSpinner;", "Ls1/s;", "onDetachedFromWindow", "()V", AbstractC2405c.f7629a, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contactfeedback.ui.ManualDropdownDismissSpinner */
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner.class */
public final class ManualDropdownDismissSpinner extends AppCompatSpinner {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualDropdownDismissSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: c */
    public final void m35609c() {
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
