package p000;

import android.content.DialogInterface;
import com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment;
/* renamed from: a01 */
/* loaded from: classes-dex2jar.jar:a01.class */
public final /* synthetic */ class a01 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f10a;

    /* renamed from: b */
    public final /* synthetic */ int f11b;

    /* renamed from: c */
    public final /* synthetic */ l81 f12c;

    public /* synthetic */ a01(RecentcallsFragment recentcallsFragment, int i, l81 l81Var) {
        this.f10a = recentcallsFragment;
        this.f11b = i;
        this.f12c = l81Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f10a.X(this.f11b, this.f12c, dialogInterface, i);
    }
}
