package p193e.p194a.p1124p.p1125a;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import java.util.List;
import s1.k;
/* renamed from: e.a.p.a.j */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/j.class */
public final class DialogInterface$OnClickListenerC19169j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C19138b f53469a;

    /* renamed from: b */
    public final /* synthetic */ List f53470b;

    /* renamed from: c */
    public final /* synthetic */ List f53471c;

    public DialogInterface$OnClickListenerC19169j(C19138b c19138b, List list, List list2) {
        this.f53469a = c19138b;
        this.f53470b = list;
        this.f53471c = list2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C19138b c19138b = this.f53469a;
        Intent intent = new Intent((Intent) ((k) this.f53470b.get(i)).a);
        ResolveInfo resolveInfo = (ResolveInfo) this.f53471c.get(i);
        int i2 = C19138b.f53366W;
        c19138b.m14047OA(intent, resolveInfo);
        c19138b.startActivityForResult(intent, 6);
    }
}
