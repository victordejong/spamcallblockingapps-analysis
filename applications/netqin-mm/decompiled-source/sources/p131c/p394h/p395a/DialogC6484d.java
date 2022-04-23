package p131c.p394h.p395a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.google.common.collect.RegularImmutableMap;
import com.inmobi.ads.C8310v;
import com.libaray.gdpr.GdprHelper;
import com.libaray.gdpr.GdprPrivacyActivity;
import p573f.p590w.p592c.C10059q;
/* renamed from: c.h.a.d */
/* loaded from: classes2-dex2jar.jar:c/h/a/d.class */
public final class DialogC6484d extends Dialog implements View.OnClickListener {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC6484d(Activity activity) {
        super(activity, C6488h.Custom_Dialog);
        C10059q.m1637b(activity, "activity");
        setContentView(C6486f.dialog_gdpr);
        m20722b();
        Context context = getContext();
        C10059q.m1642a((Object) context, "context");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        Context context2 = getContext();
        C10059q.m1642a((Object) context2, "context");
        CharSequence loadLabel = applicationInfo.loadLabel(context2.getPackageManager());
        View findViewById = findViewById(C6485e.title);
        C10059q.m1642a((Object) findViewById, "findViewById<TextView>(R.id.title)");
        ((TextView) findViewById).setText(getContext().getString(C6487g.dialog_title));
        View findViewById2 = findViewById(C6485e.content);
        C10059q.m1642a((Object) findViewById2, "findViewById<TextView>(R.id.content)");
        ((TextView) findViewById2).setText(getContext().getString(C6487g.dialog_content, loadLabel, loadLabel));
        findViewById(C6485e.cancel).setOnClickListener(this);
        findViewById(C6485e.confirm).setOnClickListener(this);
    }

    /* renamed from: a */
    public final int m20723a() {
        return C6483c.m20728a(20.0f);
    }

    /* renamed from: b */
    public final void m20722b() {
        Window window = getWindow();
        if (window != null) {
            Context context = window.getContext();
            C10059q.m1642a((Object) context, "context");
            Resources resources = context.getResources();
            C10059q.m1642a((Object) resources, "context.resources");
            window.setLayout(resources.getDisplayMetrics().widthPixels - (m20723a() << 1), -2);
            window.setFormat(-3);
            window.setDimAmount(0.8f);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C10059q.m1637b(view, C8310v.f32322d);
        if (view.getId() == C6485e.confirm) {
            GdprHelper.f33128i.m5346b(false);
            Context context = getContext();
            Intent intent = new Intent(getContext(), GdprPrivacyActivity.class);
            intent.addFlags(RegularImmutableMap.SHORT_MAX_SIZE);
            context.startActivity(intent);
            AbstractC6482b b = GdprHelper.f33128i.m5348b();
            if (b != null) {
                b.mo19689b();
            }
        }
        dismiss();
    }
}
