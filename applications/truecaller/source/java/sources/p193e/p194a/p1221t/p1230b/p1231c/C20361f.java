package p193e.p194a.p1221t.p1230b.p1231c;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import java.util.Set;
import n3.r.a.l;
/* renamed from: e.a.t.b.c.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/f.class */
public class C20361f implements RequestPermissionHandler.AbstractC2866a {

    /* renamed from: a */
    public final /* synthetic */ String f57205a;

    /* renamed from: b */
    public final /* synthetic */ String f57206b;

    /* renamed from: c */
    public final /* synthetic */ String f57207c;

    /* renamed from: d */
    public final /* synthetic */ VerificationCallback f57208d;

    /* renamed from: e */
    public final /* synthetic */ l f57209e;

    /* renamed from: f */
    public final /* synthetic */ C20362g f57210f;

    public C20361f(C20362g c20362g, String str, String str2, String str3, VerificationCallback verificationCallback, l lVar) {
        this.f57210f = c20362g;
        this.f57205a = str;
        this.f57206b = str2;
        this.f57207c = str3;
        this.f57208d = verificationCallback;
        this.f57209e = lVar;
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: a */
    public boolean mo11208a(Set<String> set) {
        return false;
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: b */
    public void mo11207b(Set<String> set, Set<String> set2) {
        C20362g c20362g = this.f57210f;
        c20362g.f57211h.mo11184n(c20362g.f57200d, this.f57205a, this.f57206b, this.f57207c, c20362g.f57213j, this.f57208d);
    }

    @Override // com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.AbstractC2866a
    /* renamed from: c */
    public boolean mo11206c(Set<String> set) {
        new AlertDialog.Builder(this.f57209e).setMessage("For verifying your number, we need Calls and Phone permission").setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: e.a.t.b.c.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestPermissionHandler requestPermissionHandler = C20361f.this.f57210f.f57215l;
                requestPermissionHandler.m35921a(requestPermissionHandler.f10003b);
            }
        }).setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: e.a.t.b.c.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20361f.this.f57210f.f57215l.m35918d();
                dialogInterface.dismiss();
            }
        }).show();
        return true;
    }
}
