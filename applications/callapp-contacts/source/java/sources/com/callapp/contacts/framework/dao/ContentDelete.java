package com.callapp.contacts.framework.dao;

import android.net.Uri;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentDelete.class */
public class ContentDelete extends BaseWhereSupport<Integer> {

    /* renamed from: a */
    Uri f25155a;

    public ContentDelete(Uri uri) {
        this.f25155a = uri;
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    /* renamed from: c */
    final /* synthetic */ Integer mo29004c(String str, String[] strArr) {
        return Integer.valueOf(Singletons.get().getApplication().getContentResolver().delete(this.f25155a, str, strArr));
    }
}
