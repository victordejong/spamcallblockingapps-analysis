package p193e.p194a.p1221t.p1230b.p1236e.p1237d;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.truecaller.android.sdk.C2859R;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import java.util.Set;
import n3.r.a.l;
/* renamed from: e.a.t.b.e.d.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/e/d/e.class */
public class C20395e implements RequestPermissionHandler.AbstractC2866a {

    /* renamed from: a */
    public final /* synthetic */ String f57276a;

    /* renamed from: b */
    public final /* synthetic */ String f57277b;

    /* renamed from: c */
    public final /* synthetic */ String f57278c;

    /* renamed from: d */
    public final /* synthetic */ VerificationCallback f57279d;

    /* renamed from: e */
    public final /* synthetic */ l f57280e;

    /* renamed from: f */
    public final /* synthetic */ C20396f f57281f;

    public C20395e(C20396f c20396f, String str, String str2, String str3, VerificationCallback verificationCallback, l lVar) {
        this.f57281f = c20396f;
        this.f57276a = str;
        this.f57277b = str2;
        this.f57278c = str3;
        this.f57279d = verificationCallback;
        this.f57280e = lVar;
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: a */
    public boolean mo11208a(Set<String> set) {
        return false;
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: b */
    public void mo11207b(Set<String> set, Set<String> set2) {
        C20396f c20396f = this.f57281f;
        c20396f.f57282i.mo11184n(c20396f.f57270d, this.f57276a, this.f57277b, this.f57278c, c20396f.f57284k, this.f57279d);
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: c */
    public boolean mo11206c(Set<String> set) {
        new AlertDialog.Builder(this.f57280e).setMessage(C2859R.string.permission_rationale_msg).setCancelable(false).setPositiveButton(C2859R.string.f9994ok, new DialogInterface.OnClickListener() { // from class: e.a.t.b.e.d.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestPermissionHandler requestPermissionHandler = C20395e.this.f57281f.f57286m;
                requestPermissionHandler.m35921a(requestPermissionHandler.f10003b);
            }
        }).setNegativeButton(C2859R.string.cancel, new DialogInterface.OnClickListener() { // from class: e.a.t.b.e.d.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20395e.this.f57281f.f57286m.m35918d();
                dialogInterface.dismiss();
            }
        }).show();
        return true;
    }
}
