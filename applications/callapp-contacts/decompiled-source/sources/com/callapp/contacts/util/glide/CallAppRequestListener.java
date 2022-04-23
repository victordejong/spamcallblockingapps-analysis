package com.callapp.contacts.util.glide;

import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppRequestListener.class */
public class CallAppRequestListener<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f16183a;

    /* renamed from: b  reason: collision with root package name */
    private final ContactData f16184b;

    /* renamed from: c  reason: collision with root package name */
    private g f16185c;

    public CallAppRequestListener(String str, ContactData contactData) {
        this(str, contactData, null);
    }

    public CallAppRequestListener(String str, ContactData contactData, g gVar) {
        this.f16183a = str;
        this.f16184b = contactData;
        this.f16185c = gVar;
    }

    @Override // com.bumptech.glide.e.g
    public final boolean a(GlideException glideException, Object obj, j<T> jVar, boolean z) {
        if (StringUtils.b((CharSequence) this.f16183a) && this.f16184b != null && HttpUtils.a()) {
            this.f16184b.removeCurrentPhotoUrl(this.f16183a);
        }
        g gVar = this.f16185c;
        if (gVar == null) {
            return false;
        }
        gVar.a(glideException, obj, jVar, z);
        return false;
    }

    @Override // com.bumptech.glide.e.g
    public final boolean a(T t, Object obj, j<T> jVar, a aVar, boolean z) {
        g gVar = this.f16185c;
        if (gVar == null) {
            return false;
        }
        gVar.a(t, obj, jVar, aVar, z);
        return false;
    }
}
