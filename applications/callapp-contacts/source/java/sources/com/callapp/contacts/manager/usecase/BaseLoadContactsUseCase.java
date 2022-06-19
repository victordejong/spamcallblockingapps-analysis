package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.p049h.p051b.C1169b;
import androidx.p049h.p051b.C1170c;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.usecase.UseCase;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/BaseLoadContactsUseCase.class */
public abstract class BaseLoadContactsUseCase<Response> implements AbstractC1160a.AbstractC1161a<Cursor>, UseCase<Response> {

    /* renamed from: b */
    private final AbstractC1160a f26725b;

    /* renamed from: c */
    private final Context f26726c;

    /* renamed from: d */
    private UseCase.Callback<Response> f26727d;

    /* renamed from: e */
    private final AtomicInteger f26728e = new AtomicInteger(0);

    /* renamed from: f */
    private Handler f26729f = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected Response f26724a = null;

    public BaseLoadContactsUseCase(Context context, AbstractC1160a abstractC1160a) {
        this.f26726c = context;
        this.f26725b = abstractC1160a;
    }

    /* renamed from: b */
    public /* synthetic */ void m28118b() {
        mo28111a(this.f26727d);
    }

    @Override // androidx.p049h.p050a.AbstractC1160a.AbstractC1161a
    /* renamed from: a */
    public final C1170c<Cursor> mo19553a() {
        C1169b c1169b = new C1169b(this.f26726c, ContactsContract.Data.CONTENT_URI, null, null, null, null);
        c1169b.f4565c = getProjection();
        c1169b.f4566d = getSelection();
        c1169b.f4567e = getSelectionArgs();
        c1169b.f4568f = getSortOrder();
        return c1169b;
    }

    /* renamed from: a */
    protected abstract Response mo28113a(Cursor cursor);

    /* renamed from: a */
    public void mo19552a(C1170c<Cursor> c1170c, Cursor cursor) {
        if (cursor != null) {
            if (this.f26728e.get() > 1) {
                String simpleName = getClass().getSimpleName();
                new StringBuilder("Successfully recovered from a null value succeeded in retry number: ").append(this.f26728e.get());
                CLog.m27606a(simpleName);
            }
            this.f26728e.set(0);
            Response mo28113a = mo28113a(cursor);
            this.f26724a = mo28113a;
            this.f26727d.onResponseReady(mo28113a);
        } else if (this.f26728e.get() <= 3) {
            this.f26729f.postDelayed(new Runnable() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$BaseLoadContactsUseCase$aNCIIahUGSwUQ4wqAHaZPNtQlVY
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadContactsUseCase.this.m28118b();
                }
            }, this.f26728e.get() * 70);
        } else {
            this.f26728e.set(0);
            String simpleName2 = getClass().getSimpleName();
            StringBuilder sb = new StringBuilder("Load finished for loader Id: ");
            sb.append(getLoaderId());
            sb.append(" retried 3 times and still no response");
            CLog.m27606a(simpleName2);
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28450a(Constants.CONTACT_LIST, "Load finished for loader Id: " + getLoaderId() + " retried 3 times and still no response");
            this.f26727d.onResponseReady(null);
        }
    }

    @Override // com.callapp.contacts.manager.usecase.UseCase
    /* renamed from: a */
    public void mo28111a(UseCase.Callback<Response> callback) {
        this.f26728e.incrementAndGet();
        this.f26727d = callback;
        int loaderId = getLoaderId();
        if (this.f26725b.mo43459a(loaderId) == null) {
            CLog.m27597b(LoadContactsCountUseCase.class, "initLoader - query with loader id ".concat(String.valueOf(loaderId)), new Object[0]);
            this.f26725b.mo43457a(loaderId, this);
            return;
        }
        CLog.m27597b(LoadContactsCountUseCase.class, "restartLoader - query with loader id ".concat(String.valueOf(loaderId)), new Object[0]);
        this.f26725b.mo43455b(loaderId, this);
    }

    protected abstract int getLoaderId();

    abstract String[] getProjection();

    protected String getSelection() {
        return "mimetype= ? AND data1 IS NOT NULL AND data1 != ? AND account_type != ?";
    }

    protected String[] getSelectionArgs() {
        return new String[]{"vnd.android.cursor.item/phone_v2", "", Constants.APP_NAME};
    }

    protected String getSortOrder() {
        return "CAST(replace(display_name,' ','') AS INTEGER) ASC, display_name COLLATE NOCASE ASC, contact_id ASC, is_super_primary DESC, is_primary DESC";
    }

    public boolean isReady() {
        return this.f26724a != null;
    }
}
