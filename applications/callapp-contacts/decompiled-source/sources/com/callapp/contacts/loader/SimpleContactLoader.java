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

    /* renamed from: d  reason: collision with root package name */
    protected boolean f14493d;
    protected boolean e = true;

    protected abstract void a(LoadContext loadContext);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public final void a(LoadContext loadContext, boolean z) {
        Exception e;
        this.f14493d = z;
        try {
            if (Prefs.n.get().booleanValue()) {
                CLog.b(SimpleContactLoader.class, "Loading %s using %s", getClass().getSimpleName(), loadContext.f14535a.getId());
            }
            a(loadContext);
            loadContext.f14538d.a(loadContext);
        } catch (SQLiteException e2) {
            e = e2;
            loadContext.a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.a(e);
        } catch (QuotaReachedException e3) {
            e = e3;
            loadContext.a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.a(e);
        } catch (UnauthorizedAccessErrorException e4) {
            e = e4;
            loadContext.a((Class<? extends ContactDataLoader>) getClass(), (Throwable) e);
            loadContext.a(e);
        } catch (Throwable th) {
            loadContext.a(new Exception(th));
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public /* synthetic */ void b() {
        ContactDataLoader._CC.$default$b(this);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public void b(LoadContext loadContext) {
    }

    public Set<ContactField> getLoadedFields() {
        return ContactFieldEnumSets.ALL;
    }
}
