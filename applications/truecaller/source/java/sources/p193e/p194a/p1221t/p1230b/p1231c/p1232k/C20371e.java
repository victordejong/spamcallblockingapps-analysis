package p193e.p194a.p1221t.p1230b.p1231c.p1232k;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26413b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u0011J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Le/a/t/b/c/k/e;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onResume", "()V", C22021b.f61237c, "[Ljava/lang/String;", "preRequestPermissions", "Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;", "a", "Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;", "requestPermissionHandler", "<init>", "sdk-external_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.t.b.c.k.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/k/e.class */
public final class C20371e extends Fragment {

    /* renamed from: a */
    public RequestPermissionHandler f57231a;

    /* renamed from: b */
    public String[] f57232b;

    public void onCreate(Bundle bundle) {
        C20371e.super.onCreate(bundle);
        setRetainInstance(true);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        RequestPermissionHandler requestPermissionHandler = this.f57231a;
        if (requestPermissionHandler == null) {
            l.l("requestPermissionHandler");
            throw null;
        }
        Objects.requireNonNull(requestPermissionHandler);
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i == 200) {
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (iArr[i2] == 0) {
                    requestPermissionHandler.m35919c(strArr[i2], false);
                } else {
                    String str = strArr[i2];
                    n3.r.a.l lVar = requestPermissionHandler.f10004c;
                    int i3 = C26413b.f74031c;
                    if (!lVar.shouldShowRequestPermissionRationale(str)) {
                        requestPermissionHandler.m35919c(strArr[i2], true);
                    }
                }
            }
            requestPermissionHandler.m35918d();
        }
        this.f57232b = null;
    }

    public void onResume() {
        C20371e.super.onResume();
        String[] strArr = this.f57232b;
        if (strArr != null) {
            requestPermissions(strArr, 200);
        }
        this.f57232b = null;
    }
}
