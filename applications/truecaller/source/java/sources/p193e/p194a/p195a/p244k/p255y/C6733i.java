package p193e.p194a.p195a.p244k.p255y;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p195a.p244k.p255y.AbstractC6727d;
/* renamed from: e.a.a.k.y.i */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/i.class */
public class C6733i extends CursorWrapper implements AbstractC6727d.AbstractC6728a {

    /* renamed from: e */
    public static final String[] f22180e = {"_id", "ct", "text", "chset", "cl"};

    /* renamed from: a */
    public final int f22181a;

    /* renamed from: b */
    public final int f22182b;

    /* renamed from: c */
    public final int f22183c;

    /* renamed from: d */
    public final int f22184d;

    public C6733i(Cursor cursor) {
        super(cursor);
        this.f22181a = cursor.getColumnIndexOrThrow("_id");
        this.f22182b = cursor.getColumnIndexOrThrow("ct");
        this.f22183c = cursor.getColumnIndexOrThrow("text");
        cursor.getColumnIndexOrThrow("chset");
        this.f22184d = cursor.getColumnIndexOrThrow("cl");
    }

    /* renamed from: b */
    public Uri m30508b() {
        StringBuilder m8728C = C22128a.m8728C("content://mms/part/");
        m8728C.append(getLong(this.f22181a));
        return Uri.parse(m8728C.toString());
    }

    /* renamed from: d */
    public String m30507d() {
        return getString(this.f22184d);
    }
}
