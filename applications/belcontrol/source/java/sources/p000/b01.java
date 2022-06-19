package p000;

import android.content.DialogInterface;
import com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment;
import java.util.ArrayList;
/* renamed from: b01 */
/* loaded from: classes-dex2jar.jar:b01.class */
public final /* synthetic */ class b01 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f1741a;

    /* renamed from: b */
    public final /* synthetic */ Object f1742b;

    /* renamed from: c */
    public final /* synthetic */ ArrayList f1743c;

    public /* synthetic */ b01(RecentcallsFragment recentcallsFragment, Object obj, ArrayList arrayList) {
        this.f1741a = recentcallsFragment;
        this.f1742b = obj;
        this.f1743c = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f1741a.e0(this.f1742b, this.f1743c, dialogInterface, i);
    }
}
