package p000;

import android.content.UriMatcher;
import android.net.Uri;
import java.lang.Enum;
/* renamed from: mm1 */
/* loaded from: classes3-dex2jar.jar:mm1.class */
public class mm1<T extends Enum<T>> extends UriMatcher {

    /* renamed from: a */
    public Class<T> f7040a;

    public mm1(Class<T> cls, int i) {
        super(i);
        this.f7040a = cls;
    }

    /* renamed from: a */
    public void m1230a(String str, String str2, T t) {
        super.addURI(str, str2, t.ordinal());
    }

    /* renamed from: b */
    public T m1229b(Uri uri) {
        int match = super.match(uri);
        T[] enumConstants = this.f7040a.getEnumConstants();
        if (match < 0 || match > enumConstants.length) {
            return null;
        }
        return enumConstants[match];
    }
}
