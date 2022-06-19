package p034c9;

import android.database.Cursor;
import android.database.CursorWrapper;
/* renamed from: c9.g */
/* loaded from: classes2-dex2jar.jar:c9/g.class */
public class C0860g extends CursorWrapper {

    /* renamed from: b */
    public static final /* synthetic */ int f3152b = 0;

    /* renamed from: a */
    public Cursor f3153a;

    public C0860g(Cursor cursor) {
        super(cursor);
        this.f3153a = cursor;
    }

    /* renamed from: d */
    public boolean m7251d(int i) {
        boolean z = true;
        if (this.f3153a.getInt(i) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.database.CursorWrapper
    public Cursor getWrappedCursor() {
        return this.f3153a;
    }

    /* renamed from: k */
    public int m7250k(String str) {
        int columnIndex = this.f3153a.getColumnIndex(str);
        return (columnIndex == -1 || this.f3153a.isNull(columnIndex)) ? 0 : this.f3153a.getInt(columnIndex);
    }

    /* renamed from: l */
    public Integer m7249l(String str, Integer num) {
        int columnIndex = this.f3153a.getColumnIndex(str);
        return (columnIndex == -1 || this.f3153a.isNull(columnIndex)) ? null : Integer.valueOf(this.f3153a.getInt(columnIndex));
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: o */
    public long m7248o(String str) {
        int columnIndex = this.f3153a.getColumnIndex(str);
        return (columnIndex == -1 || this.f3153a.isNull(columnIndex)) ? (char) 0 : this.f3153a.getLong(columnIndex);
    }

    /* renamed from: p */
    public String m7247p(String str) {
        int columnIndex = this.f3153a.getColumnIndex(str);
        return (columnIndex == -1 || this.f3153a.isNull(columnIndex)) ? null : this.f3153a.getString(columnIndex);
    }
}
