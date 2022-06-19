package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/EagerContactLoader.class */
public abstract class EagerContactLoader extends SimpleContactLoader {
    /* renamed from: a */
    public final boolean m28952a() {
        return this.f25280e;
    }

    /* renamed from: c */
    public final void m28951c(LoadContext loadContext) {
        this.f25280e = false;
        mo28873a(loadContext, false);
    }

    /* renamed from: d */
    public final void m28950d(LoadContext loadContext) {
        this.f25280e = true;
        mo28923e(loadContext);
    }

    /* renamed from: e */
    public abstract void mo28923e(LoadContext loadContext);
}
