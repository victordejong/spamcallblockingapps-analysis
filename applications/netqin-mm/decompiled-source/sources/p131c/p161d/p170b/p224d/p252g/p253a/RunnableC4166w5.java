package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.google.android.gms.internal.ads.zzazu;
import com.mopub.mobileads.resource.DrawableConstants;
/* renamed from: c.d.b.d.g.a.w5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w5.class */
public final class RunnableC4166w5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f15906a;

    /* renamed from: b */
    public final /* synthetic */ String f15907b;

    /* renamed from: c */
    public final /* synthetic */ boolean f15908c;

    /* renamed from: d */
    public final /* synthetic */ boolean f15909d;

    public RunnableC4166w5(zzazu zzazuVar, Context context, String str, boolean z, boolean z2) {
        this.f15906a = context;
        this.f15907b = str;
        this.f15908c = z;
        this.f15909d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f15906a);
        builder.setMessage(this.f15907b);
        if (this.f15908c) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f15909d) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton(DrawableConstants.CtaButton.DEFAULT_CTA_TEXT, new DialogInterface$OnClickListenerC4129v5(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
