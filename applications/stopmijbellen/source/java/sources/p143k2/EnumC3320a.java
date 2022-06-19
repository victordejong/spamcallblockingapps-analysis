package p143k2;

import androidx.annotation.RecentlyNonNull;
/* renamed from: k2.a */
/* loaded from: classes-dex2jar.jar:k2/a.class */
public enum EnumC3320a {
    /* JADX INFO: Fake field, exist only in values array */
    NETWORK_ERROR("Invalid Ad request."),
    /* JADX INFO: Fake field, exist only in values array */
    NETWORK_ERROR("Ad request successful, but no ad returned due to lack of ad inventory."),
    /* JADX INFO: Fake field, exist only in values array */
    NETWORK_ERROR("A network error occurred."),
    INTERNAL_ERROR("There was an internal error.");
    

    /* renamed from: a */
    public final String f11245a;

    EnumC3320a(String str) {
        this.f11245a = str;
    }

    @Override // java.lang.Enum
    @RecentlyNonNull
    public String toString() {
        return this.f11245a;
    }
}
