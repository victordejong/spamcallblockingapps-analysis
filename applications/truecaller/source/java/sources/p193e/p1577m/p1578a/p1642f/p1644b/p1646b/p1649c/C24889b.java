package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c;

import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: e.m.a.f.b.b.c.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/b.class */
public final /* synthetic */ class C24889b implements Comparator {

    /* renamed from: a */
    public static final Comparator f69785a = new C24889b();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
        return ((Scope) obj).f5721b.compareTo(((Scope) obj2).f5721b);
    }
}
