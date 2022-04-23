package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/EagerContactLoader.class */
public abstract class EagerContactLoader extends SimpleContactLoader {
    public final boolean a() {
        return this.e;
    }

    public final void c(LoadContext loadContext) {
        this.e = false;
        a(loadContext, false);
    }

    public final void d(LoadContext loadContext) {
        this.e = true;
        e(loadContext);
    }

    public abstract void e(LoadContext loadContext);
}
