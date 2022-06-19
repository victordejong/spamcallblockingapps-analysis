package p193e.p194a.p1406z3.p1407g;

import android.content.UriMatcher;
/* renamed from: e.a.z3.g.e */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/e.class */
public final class C21864e {

    /* renamed from: a */
    public static UriMatcher f60746a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
        f60746a = uriMatcher;
    }
}
