package com.callapp.contacts.loader;

import android.database.sqlite.SQLiteException;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.UnauthorizedAccessErrorException;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/SimpleContactLoader.class */
public abstract class SimpleContactLoader implements ContactDataLoader {

    /* renamed from: d */
    protected boolean f25279d;

    /* renamed from: e */
    protected boolean f25280e = true;

    /* renamed from: a */
    protected abstract void mo27726a(LoadContext loadContext);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: a */
    public final void mo28873a(LoadContext loadContext, boolean z) {
        Exception e;
        this.f25279d = z;
        try {
            if (Prefs.f26657n.get().booleanValue()) {
                CLog.m27597b(SimpleContactLoader.class, "Loading %s using %s", getClass().getSimpleName(), loadContext.f25322a.getId());
            }
            mo27726a(loadContext);
            loadContext.f25325d.mo28871a(loadContext);
        } catch (SQLiteException e2) {
            e = e2;
            loadContext.m28864a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.m28863a(e);
        } catch (QuotaReachedException e3) {
            e = e3;
            loadContext.m28864a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.m28863a(e);
        } catch (UnauthorizedAccessErrorException e4) {
            e = e4;
            loadContext.m28864a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.m28863a(e);
        } catch (Throwable th) {
            loadContext.m28863a(new Exception(th));
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public /* synthetic */ void mo28872b() {
        ContactDataLoader._CC.$default$b(this);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public void mo28789b(LoadContext loadContext) {
    }

    public Set<ContactField> getLoadedFields() {
        return ContactFieldEnumSets.ALL;
    }
}
