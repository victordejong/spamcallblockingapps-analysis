package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/CompoundSyncLoader.class */
public class CompoundSyncLoader extends BaseCompoundLoader {
    @Override // com.callapp.contacts.loader.BaseCompoundLoader
    /* renamed from: a */
    protected final void mo27728a(SimpleContactLoader simpleContactLoader, LoadContext loadContext) {
        long currentTimeMillis = System.currentTimeMillis();
        simpleContactLoader.mo28873a(loadContext, this.f25279d);
        CLog.m27611a(CompoundSyncLoader.class, simpleContactLoader.toString() + ".load() took " + (System.currentTimeMillis() - currentTimeMillis));
    }
}
