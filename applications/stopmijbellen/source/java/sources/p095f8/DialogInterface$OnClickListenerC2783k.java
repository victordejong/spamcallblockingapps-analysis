package p095f8;

import android.content.DialogInterface;
import ba.C0748b;
import com.mglab.scm.MainActivity;
import com.mglab.scm.visual.FragmentStat;
import p149k8.C3407w;
import p193o8.C3948e;
/* renamed from: f8.k */
/* loaded from: classes2-dex2jar.jar:f8/k.class */
public final /* synthetic */ class DialogInterface$OnClickListenerC2783k implements DialogInterface.OnClickListener {

    /* renamed from: b */
    public static final /* synthetic */ DialogInterface$OnClickListenerC2783k f9501b = new DialogInterface$OnClickListenerC2783k(0);

    /* renamed from: c */
    public static final /* synthetic */ DialogInterface$OnClickListenerC2783k f9502c = new DialogInterface$OnClickListenerC2783k(1);

    /* renamed from: a */
    public final /* synthetic */ int f9503a;

    public /* synthetic */ DialogInterface$OnClickListenerC2783k(int i) {
        this.f9503a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f9503a) {
            case 0:
                int i2 = MainActivity.f7270v;
                dialogInterface.dismiss();
                return;
            default:
                C3948e c3948e = FragmentStat.f7603g;
                C0748b.m7409b().m7404g(new C3407w("faq"));
                return;
        }
    }
}
