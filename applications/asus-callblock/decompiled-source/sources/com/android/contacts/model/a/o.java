package com.android.contacts.model.a;

import android.content.ContentValues;
import com.android.contacts.model.e;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/o.class */
public class o extends a {
    public o() {
        super(null, new ContentValues());
        this.f1994a.put("mimetype", "vnd.android.cursor.item/name");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(e eVar, ContentValues contentValues) {
        super(eVar, contentValues);
    }

    public final void a(String str) {
        this.f1994a.put(CoverUtils.CoverData.COVER_URI, str);
    }

    public final String k() {
        return this.f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
    }

    public final String l() {
        return this.f1994a.getAsString("data7");
    }

    public final String m() {
        return this.f1994a.getAsString("data8");
    }

    public final String n() {
        return this.f1994a.getAsString("data9");
    }
}
