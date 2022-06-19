package com.callapp.contacts.util.glide;

import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppRequestListener.class */
public class CallAppRequestListener<T> implements AbstractC3604g<T> {

    /* renamed from: a */
    private final String f28200a;

    /* renamed from: b */
    private final ContactData f28201b;

    /* renamed from: c */
    private AbstractC3604g f28202c;

    public CallAppRequestListener(String str, ContactData contactData) {
        this(str, contactData, null);
    }

    public CallAppRequestListener(String str, ContactData contactData, AbstractC3604g abstractC3604g) {
        this.f28200a = str;
        this.f28201b = contactData;
        this.f28202c = abstractC3604g;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3604g
    /* renamed from: a */
    public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j<T> abstractC3585j, boolean z) {
        if (StringUtils.m26045b((CharSequence) this.f28200a) && this.f28201b != null && HttpUtils.m26985a()) {
            this.f28201b.removeCurrentPhotoUrl(this.f28200a);
        }
        AbstractC3604g abstractC3604g = this.f28202c;
        if (abstractC3604g != null) {
            abstractC3604g.mo26384a(glideException, obj, abstractC3585j, z);
            return false;
        }
        return false;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3604g
    /* renamed from: a */
    public final boolean mo26383a(T t, Object obj, AbstractC3585j<T> abstractC3585j, EnumC3658a enumC3658a, boolean z) {
        AbstractC3604g abstractC3604g = this.f28202c;
        if (abstractC3604g != null) {
            abstractC3604g.mo26383a(t, obj, abstractC3585j, enumC3658a, z);
            return false;
        }
        return false;
    }
}
