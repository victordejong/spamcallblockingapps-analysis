package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.internal.zag;
/* renamed from: e.m.a.f.e.b.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/b.class */
public final class C24965b extends zag {

    /* renamed from: a */
    public final /* synthetic */ Intent f69906a;

    /* renamed from: b */
    public final /* synthetic */ Activity f69907b;

    /* renamed from: c */
    public final /* synthetic */ int f69908c;

    public C24965b(Intent intent, Activity activity, int i) {
        this.f69906a = intent;
        this.f69907b = activity;
        this.f69908c = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    /* renamed from: a */
    public final void mo4257a() {
        Intent intent = this.f69906a;
        if (intent != null) {
            this.f69907b.startActivityForResult(intent, this.f69908c);
        }
    }
}
