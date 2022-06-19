package com.truecaller.premium.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.amazon.device.ads.DtbConstants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import s1.i;
import s1.z.c.l;
import w3.b.a.u;
import w3.b.a.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001\u0019J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/truecaller/premium/util/DebugPeriodView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "title", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "Lw3/b/a/u;", "period", "setPeriod", "(Lw3/b/a/u;)V", "getPeriod", "()Lw3/b/a/u;", "Landroid/widget/EditText;", "u", "Landroid/widget/EditText;", "numberView", "Landroid/widget/TextView;", "t", "Landroid/widget/TextView;", "titleView", "Landroid/widget/Spinner;", "v", "Landroid/widget/Spinner;", "periodLengthView", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/util/DebugPeriodView.class */
public final class DebugPeriodView extends ConstraintLayout {

    /* renamed from: t */
    public final TextView f14354t;

    /* renamed from: u */
    public final EditText f14355u;

    /* renamed from: v */
    public final Spinner f14356v;

    /* renamed from: com.truecaller.premium.util.DebugPeriodView$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/util/DebugPeriodView$a.class */
    public enum EnumC4367a {
        DAY,
        WEEK,
        MONTH,
        YEAR
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugPeriodView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C2752R.layout.view_debug_period, this);
        View findViewById = findViewById(2131366469);
        l.d(findViewById, "findViewById(R.id.title)");
        this.f14354t = (TextView) findViewById;
        View findViewById2 = findViewById(2131364968);
        l.d(findViewById2, "findViewById(R.id.number)");
        this.f14355u = (EditText) findViewById2;
        View findViewById3 = findViewById(C2752R.C2754id.periodLength);
        l.d(findViewById3, "findViewById(R.id.periodLength)");
        Spinner spinner = (Spinner) findViewById3;
        this.f14356v = spinner;
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367048, EnumC4367a.values());
        arrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(0);
    }

    public final u getPeriod() {
        u uVar;
        int parseInt = Integer.parseInt(this.f14355u.getText().toString());
        if (parseInt == 0) {
            return null;
        }
        int ordinal = EnumC4367a.values()[this.f14356v.getSelectedItemPosition()].ordinal();
        if (ordinal == 0) {
            uVar = u.r(parseInt);
        } else if (ordinal == 1) {
            uVar = new u(new int[]{0, 0, parseInt, 0, 0, 0, 0, 0}, v.e());
        } else if (ordinal == 2) {
            uVar = new u(new int[]{0, parseInt, 0, 0, 0, 0, 0, 0}, v.e());
        } else if (ordinal != 3) {
            throw new i();
        } else {
            uVar = new u(new int[]{parseInt, 0, 0, 0, 0, 0, 0, 0, 0}, v.e());
        }
        return uVar;
    }

    public final void setPeriod(u uVar) {
        if (uVar == null) {
            this.f14356v.setSelection(0);
            this.f14355u.setText(DtbConstants.NETWORK_TYPE_UNKNOWN);
        } else if (uVar.x() > 0) {
            this.f14355u.setText(String.valueOf(uVar.x()));
            this.f14356v.setSelection(3);
        } else if (uVar.v() > 0) {
            this.f14355u.setText(String.valueOf(uVar.v()));
            this.f14356v.setSelection(2);
        } else if (uVar.w() > 0) {
            this.f14355u.setText(String.valueOf(uVar.w()));
            this.f14356v.setSelection(1);
        } else {
            this.f14355u.setText(String.valueOf(uVar.s()));
            this.f14356v.setSelection(0);
        }
    }

    public final void setTitle(String str) {
        l.e(str, "title");
        this.f14354t.setText(str);
    }
}
