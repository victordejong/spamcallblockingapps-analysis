package com.android.contacts.model.a;

import android.content.ContentValues;
import com.android.contacts.model.e;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/k.class */
public final class k extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar, ContentValues contentValues) {
        super(eVar, contentValues);
    }

    @Override // com.android.contacts.model.a.a
    public final String i() {
        String l = l();
        if (l == null) {
            l = k();
        }
        return l;
    }

    public final String k() {
        return this.f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
    }

    public final String l() {
        return this.f1994a.getAsString("formattedPhoneNumber");
    }
}
