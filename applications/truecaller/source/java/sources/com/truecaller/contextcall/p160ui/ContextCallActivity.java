package com.truecaller.contextcall.p160ui;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1080o.p1081a.AbstractC18583f;
import p193e.p194a.p1080o.p1081a.p1082a.p1083a.C18500a;
import p193e.p194a.p1080o.p1081a.p1082a.p1084b.C18517b;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/truecaller/contextcall/ui/ContextCallActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "qa", "()V", "<init>", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contextcall.ui.ContextCallActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/ContextCallActivity.class */
public class ContextCallActivity extends AbstractC18583f {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        ContextCallActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        InitiateCallHelper.CallOptions callOptions = (InitiateCallHelper.CallOptions) getIntent().getParcelableExtra("CallOptions");
        if (callOptions != null) {
            l.d(callOptions, "intent.getParcelableExtr…M_CALL_OPTIONS) ?: return");
            InitiateCallHelper.CallContextOption callContextOption = callOptions.f10722i;
            if (callContextOption instanceof InitiateCallHelper.CallContextOption.ShowOnDemand) {
                C18517b.C18519b c18519b = C18517b.f52251j;
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                l.d(supportFragmentManager, "supportFragmentManager");
                c18519b.m14821a(supportFragmentManager, callOptions);
            } else if (!(callContextOption instanceof InitiateCallHelper.CallContextOption.ShowOnBoarded)) {
                mo35587qa();
            } else {
                C18500a.C18504d c18504d = C18500a.f52211l;
                FragmentManager supportFragmentManager2 = getSupportFragmentManager();
                l.d(supportFragmentManager2, "supportFragmentManager");
                Objects.requireNonNull(c18504d);
                l.e(supportFragmentManager2, "fragmentManager");
                l.e(callOptions, "callOptions");
                C18500a c18500a = new C18500a();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("CallOptions", callOptions);
                c18500a.setArguments(bundle2);
                c18500a.show(supportFragmentManager2, C18500a.class.getSimpleName());
            }
        }
    }

    /* renamed from: qa */
    public void mo35587qa() {
        throw new IllegalStateException("Invalid call context option");
    }
}
