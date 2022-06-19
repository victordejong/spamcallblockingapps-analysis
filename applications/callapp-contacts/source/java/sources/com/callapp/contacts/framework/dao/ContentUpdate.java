package com.callapp.contacts.framework.dao;

import android.content.ContentValues;
import android.net.Uri;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentUpdate.class */
public class ContentUpdate extends BaseWhereSupport<Integer> {

    /* renamed from: a */
    public ContentValues f25166a = new ContentValues();

    /* renamed from: b */
    Uri f25167b;

    public ContentUpdate(Uri uri) {
        this.f25167b = uri;
    }

    /* renamed from: a */
    public final ContentUpdate m29006a(Column<Boolean> column, Boolean bool) {
        this.f25166a.put(column.f25180a, bool);
        return this;
    }

    /* renamed from: b */
    public final <T> ContentUpdate m29005b(Column<T> column, String str, T t) {
        m29037a(column, str, t);
        return this;
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    /* renamed from: c */
    final /* synthetic */ Integer mo29004c(String str, String[] strArr) {
        return Integer.valueOf(Singletons.get().getApplication().getContentResolver().update(this.f25167b, this.f25166a, str, strArr));
    }
}
