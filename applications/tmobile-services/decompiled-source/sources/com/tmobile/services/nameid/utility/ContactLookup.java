package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.os.AsyncTask;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.Contact;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ContactLookup.class */
public class ContactLookup {

    /* renamed from: c */
    private static ContactLookup f14242c;

    /* renamed from: a */
    private HashMap<String, Contact> f14243a = new HashMap<>();

    /* renamed from: b */
    private Set<ContactUpdateListener> f14244b = new HashSet();

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ContactLookup$ContactUpdateListener.class */
    public static abstract class ContactUpdateListener implements Comparable<Object> {

        /* renamed from: f */
        private String f14245f = UUID.randomUUID().toString();

        /* renamed from: a */
        public String m5820a() {
            return this.f14245f;
        }

        /* renamed from: b */
        public abstract void mo5819b();

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            if (obj instanceof ContactUpdateListener) {
                return ((ContactUpdateListener) obj).f14245f.compareTo(this.f14245f);
            }
            return -1;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ContactUpdateListener) && ((ContactUpdateListener) obj).f14245f.equals(this.f14245f);
        }

        public int hashCode() {
            return this.f14245f.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ContactLookup$LookupContactList.class */
    private class LookupContactList extends AsyncTask<Void, Void, List<Contact>> {
        private LookupContactList() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Nonnull
        /* renamed from: a */
        public List<Contact> doInBackground(Void... voidArr) {
            List<Contact> list;
            Context l = MainApplication.m7528l();
            if (l != null) {
                list = ContactUtils.m5816a(l);
            } else {
                LogUtil.m5631p("ContactLookup#", "Context was null. Return empty list.");
                list = new ArrayList<>();
            }
            return list;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(@Nonnull List<Contact> list) {
            try {
                for (Contact contact : list) {
                    ContactLookup.this.f14243a.put(contact.getNumber(), contact);
                }
                for (ContactUpdateListener contactUpdateListener : ContactLookup.this.f14244b) {
                    if (contactUpdateListener != null) {
                        contactUpdateListener.mo5819b();
                    }
                }
            } catch (ConcurrentModificationException e) {
                LogUtil.m5641f("ContactLookup#onPostExecute", "Error encountered - " + e.getMessage(), e);
            }
        }
    }

    /* renamed from: d */
    public static ContactLookup m5824d() {
        ContactLookup contactLookup;
        synchronized (ContactLookup.class) {
            try {
                if (f14242c == null) {
                    f14242c = new ContactLookup();
                }
                contactLookup = f14242c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return contactLookup;
    }

    /* renamed from: c */
    public void m5825c(ContactUpdateListener contactUpdateListener) {
        this.f14244b.add(contactUpdateListener);
    }

    @Nullable
    /* renamed from: e */
    public Contact m5823e(String str) {
        synchronized (this) {
            if (MainApplication.m7528l() != null && !PermissionChecker.m5423b(MainApplication.m7528l())) {
                return null;
            }
            String str2 = str;
            if (!StringParsingUtils.m5336d(str)) {
                str2 = PhoneNumberHelper.m5414e(str, "");
            }
            if (!this.f14243a.containsKey(str2)) {
                return null;
            }
            return this.f14243a.get(str2);
        }
    }

    /* renamed from: f */
    public void m5822f() {
        synchronized (this) {
            new LookupContactList().execute(new Void[0]);
        }
    }

    /* renamed from: g */
    public void m5821g(ContactUpdateListener contactUpdateListener) {
        this.f14244b.remove(contactUpdateListener);
    }
}
