package com.android.contacts.model.a;

import android.content.ContentValues;
import com.android.contacts.model.e;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/c.class */
public final class c extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(e eVar, ContentValues contentValues) {
        super(eVar, contentValues);
    }

    public final String k() {
        return this.f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
    }
}
