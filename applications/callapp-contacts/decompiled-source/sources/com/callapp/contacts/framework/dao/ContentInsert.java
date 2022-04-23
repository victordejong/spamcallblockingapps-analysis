package com.callapp.contacts.framework.dao;

import android.content.ContentValues;
import android.net.Uri;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentInsert.class */
public class ContentInsert extends BaseStatement<Uri> {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f14386a = new ContentValues();

    /* renamed from: b  reason: collision with root package name */
    Uri f14387b;

    public ContentInsert(Uri uri) {
        this.f14387b = uri;
    }

    public final ContentInsert a(Column<String> column, String str) {
        this.f14386a.put(column.f14402a, str);
        return this;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    protected final /* synthetic */ Uri a() {
        return Singletons.get().getApplication().getContentResolver().insert(this.f14387b, this.f14386a);
    }
}
