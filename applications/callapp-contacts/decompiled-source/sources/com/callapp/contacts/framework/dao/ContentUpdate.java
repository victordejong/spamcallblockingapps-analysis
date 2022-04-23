package com.callapp.contacts.framework.dao;

import android.content.ContentValues;
import android.net.Uri;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentUpdate.class */
public class ContentUpdate extends BaseWhereSupport<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f14393a = new ContentValues();

    /* renamed from: b  reason: collision with root package name */
    Uri f14394b;

    public ContentUpdate(Uri uri) {
        this.f14394b = uri;
    }

    public final ContentUpdate a(Column<Boolean> column, Boolean bool) {
        this.f14393a.put(column.f14402a, bool);
        return this;
    }

    public final <T> ContentUpdate b(Column<T> column, String str, T t) {
        a(column, str, t);
        return this;
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    final /* synthetic */ Integer c(String str, String[] strArr) {
        return Integer.valueOf(Singletons.get().getApplication().getContentResolver().update(this.f14394b, this.f14393a, str, strArr));
    }
}
