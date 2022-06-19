package com.truecaller.calling.recorder;

import android.content.DialogInterface;
import p193e.p194a.p804h.p829g.AbstractC14687m;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/recorder/CallRecordingsListFragment$a.class */
public final class CallRecordingsListFragment$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f10750a;

    /* renamed from: b */
    public final /* synthetic */ Object f10751b;

    /* renamed from: c */
    public final /* synthetic */ Object f10752c;

    /* renamed from: d */
    public final /* synthetic */ Object f10753d;

    public CallRecordingsListFragment$a(int i, Object obj, Object obj2, Object obj3) {
        this.f10750a = i;
        this.f10751b = obj;
        this.f10752c = obj2;
        this.f10753d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f10750a;
        if (i2 == 0) {
            ((AbstractC14687m) this.f10752c).m19766a(this.f10753d);
        } else if (i2 != 1) {
            throw null;
        } else {
            ((AbstractC14687m) this.f10752c).m19765b(this.f10753d);
        }
    }
}
