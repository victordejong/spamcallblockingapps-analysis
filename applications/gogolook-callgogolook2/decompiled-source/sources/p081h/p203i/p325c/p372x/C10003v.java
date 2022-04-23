package p081h.p203i.p325c.p372x;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import java.util.regex.Pattern;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
/* renamed from: h.i.c.x.v */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/v.class */
public final class C10003v {

    /* renamed from: d */
    public static final Pattern f22610d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a */
    public final String f22611a;

    /* renamed from: b */
    public final String f22612b;

    /* renamed from: c */
    public final String f22613c;

    public C10003v(String str, String str2) {
        this.f22611a = m13676a(str2, str);
        this.f22612b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f22613c = sb.toString();
    }

    @Nullable
    /* renamed from: a */
    public static C10003v m13677a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new C10003v(split[0], split[1]);
    }

    @NonNull
    /* renamed from: a */
    public static String m13676a(String str, String str2) {
        String str3 = str;
        if (str != null) {
            str3 = str;
            if (str.startsWith("/topics/")) {
                String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2);
                str3 = str.substring(8);
            }
        }
        if (str3 != null && f22610d.matcher(str3).matches()) {
            return str3;
        }
        throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str3, "[a-zA-Z0-9-_.~%]{1,900}"));
    }

    /* renamed from: b */
    public static C10003v m13674b(@NonNull String str) {
        return new C10003v(ExifInterface.LATITUDE_SOUTH, str);
    }

    /* renamed from: c */
    public static C10003v m13672c(@NonNull String str) {
        return new C10003v("U", str);
    }

    /* renamed from: a */
    public final String m13678a() {
        return this.f22612b;
    }

    /* renamed from: b */
    public final String m13675b() {
        return this.f22611a;
    }

    /* renamed from: c */
    public final String m13673c() {
        return this.f22613c;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C10003v)) {
            return false;
        }
        C10003v vVar = (C10003v) obj;
        return this.f22611a.equals(vVar.f22611a) && this.f22612b.equals(vVar.f22612b);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f22612b, this.f22611a);
    }
}
