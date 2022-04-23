package p081h.p203i.p204a.p224e.p252e;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* renamed from: h.i.a.e.e.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/i.class */
public final class View$OnClickListenerC7116i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Context f17232a;

    /* renamed from: b */
    public final /* synthetic */ Intent f17233b;

    public View$OnClickListenerC7116i(Context context, Intent intent) {
        this.f17232a = context;
        this.f17233b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f17232a.startActivity(this.f17233b);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
