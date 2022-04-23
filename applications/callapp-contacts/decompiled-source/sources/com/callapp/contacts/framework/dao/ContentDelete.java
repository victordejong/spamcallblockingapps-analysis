package com.callapp.contacts.framework.dao;

import android.net.Uri;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentDelete.class */
public class ContentDelete extends BaseWhereSupport<Integer> {

    /* renamed from: a  reason: collision with root package name */
    Uri f14385a;

    public ContentDelete(Uri uri) {
        this.f14385a = uri;
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    final /* synthetic */ Integer c(String str, String[] strArr) {
        return Integer.valueOf(Singletons.get().getApplication().getContentResolver().delete(this.f14385a, str, strArr));
    }
}
