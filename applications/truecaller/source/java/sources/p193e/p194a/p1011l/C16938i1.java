package p193e.p194a.p1011l;

import android.content.Context;
import android.text.TextUtils;
import android.util.Patterns;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.AppCompatEditText;
import com.truecaller.C2752R;
import n3.b.a.g;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: e.a.l.i1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/i1.class */
public class C16938i1 extends g {

    /* renamed from: d */
    public AppCompatEditText f47536d;

    /* renamed from: e.a.l.i1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/i1$a.class */
    public interface AbstractC16939a {
        /* renamed from: a */
        void m16747a(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C16938i1(Context context) {
        super(context, 0);
        setCancelable(false);
        String string = getContext().getString(C2752R.string.PremiumSendLogsMessage);
        AlertController alertController = ((g) this).c;
        alertController.f127f = string;
        TextView textView = alertController.f109F;
        if (textView != null) {
            textView.setText(string);
        }
        AppCompatEditText appCompatEditText = new AppCompatEditText(getContext(), null);
        this.f47536d = appCompatEditText;
        appCompatEditText.setMaxLines(1);
        this.f47536d.setHint(C2752R.string.PremiumFeedbackEmailHint);
        this.f47536d.addTextChangedListener(new C16934h1(this));
        int m28238b = C8605o.m28238b(getContext(), 18.0f);
        AppCompatEditText appCompatEditText2 = this.f47536d;
        AlertController alertController2 = ((g) this).c;
        alertController2.f129h = appCompatEditText2;
        alertController2.f130i = 0;
        alertController2.f135n = true;
        alertController2.f131j = m28238b;
        alertController2.f132k = 0;
        alertController2.f133l = m28238b;
        alertController2.f134m = 0;
    }

    /* renamed from: g */
    public final String m16749g() {
        AppCompatEditText appCompatEditText = this.f47536d;
        if (appCompatEditText != null) {
            return appCompatEditText.getText().toString().trim();
        }
        return null;
    }

    /* renamed from: h */
    public final void m16748h() {
        Button d = d(-1);
        if (d == null || this.f47536d == null) {
            return;
        }
        String m16749g = m16749g();
        d.setEnabled(!TextUtils.isEmpty(m16749g) && Patterns.EMAIL_ADDRESS.matcher(m16749g).matches());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void show() {
        C16938i1.super.show();
        m16748h();
    }
}
