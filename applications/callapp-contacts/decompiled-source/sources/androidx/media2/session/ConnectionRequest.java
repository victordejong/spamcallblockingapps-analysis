package androidx.media2.session;

import android.os.Bundle;
import androidx.versionedparcelable.c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequest.class */
class ConnectionRequest implements c {

    /* renamed from: a  reason: collision with root package name */
    int f4488a;

    /* renamed from: b  reason: collision with root package name */
    String f4489b;

    /* renamed from: c  reason: collision with root package name */
    int f4490c;

    /* renamed from: d  reason: collision with root package name */
    Bundle f4491d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionRequest(String str, int i, Bundle bundle) {
        this.f4488a = 0;
        this.f4489b = str;
        this.f4490c = i;
        this.f4491d = bundle;
    }
}
