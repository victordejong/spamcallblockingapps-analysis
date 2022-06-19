package com.callapp.contacts.framework.dao;

import android.content.ContentValues;
import android.net.Uri;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentInsert.class */
public class ContentInsert extends BaseStatement<Uri> {

    /* renamed from: a */
    public ContentValues f25156a = new ContentValues();

    /* renamed from: b */
    Uri f25157b;

    public ContentInsert(Uri uri) {
        this.f25157b = uri;
    }

    /* renamed from: a */
    public final ContentInsert m29030a(Column<String> column, String str) {
        this.f25156a.put(column.f25180a, str);
        return this;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    /* renamed from: a */
    protected final /* synthetic */ Uri mo29031a() {
        return Singletons.get().getApplication().getContentResolver().insert(this.f25157b, this.f25156a);
    }
}
