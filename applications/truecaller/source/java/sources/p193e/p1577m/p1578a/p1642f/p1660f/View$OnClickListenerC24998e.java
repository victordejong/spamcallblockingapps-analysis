package p193e.p1577m.p1578a.p1642f.p1660f;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
/* renamed from: e.m.a.f.f.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/f/e.class */
public final class View$OnClickListenerC24998e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Context f69973a;

    /* renamed from: b */
    public final /* synthetic */ Intent f69974b;

    public View$OnClickListenerC24998e(Context context, Intent intent) {
        this.f69973a = context;
        this.f69974b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f69973a.startActivity(this.f69974b);
        } catch (ActivityNotFoundException e) {
        }
    }
}
