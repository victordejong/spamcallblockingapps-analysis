package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract;
import androidx.h.a.a;
import androidx.h.b.b;
import androidx.h.b.c;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.usecase.UseCase;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/BaseLoadContactsUseCase.class */
abstract class BaseLoadContactsUseCase<Response> implements a.AbstractC0065a<Cursor>, UseCase<Response> {

    /* renamed from: b  reason: collision with root package name */
    private final a f15272b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f15273c;

    /* renamed from: d  reason: collision with root package name */
    private UseCase.Callback<Response> f15274d;
    private final AtomicInteger e = new AtomicInteger(0);
    private Handler f = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    protected Response f15271a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseLoadContactsUseCase(Context context, a aVar) {
        this.f15273c = context;
        this.f15272b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        a(this.f15274d);
    }

    @Override // androidx.h.a.a.AbstractC0065a
    public final c<Cursor> a() {
        b bVar = new b(this.f15273c, ContactsContract.Data.CONTENT_URI, null, null, null, null);
        bVar.f2424c = getProjection();
        bVar.f2425d = getSelection();
        bVar.e = getSelectionArgs();
        bVar.f = getSortOrder();
        return bVar;
    }

    protected abstract Response a(Cursor cursor);

    public void a(c<Cursor> cVar, Cursor cursor) {
        if (cursor != null) {
            if (this.e.get() > 1) {
                String simpleName = getClass().getSimpleName();
                new StringBuilder("Successfully recovered from a null value succeeded in retry number: ").append(this.e.get());
                CLog.a(simpleName);
            }
            this.e.set(0);
            Response a2 = a(cursor);
            this.f15271a = a2;
            this.f15274d.onResponseReady(a2);
        } else if (this.e.get() <= 3) {
            this.f.postDelayed(new Runnable() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$BaseLoadContactsUseCase$aNCIIahUGSwUQ4wqAHaZPNtQlVY
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadContactsUseCase.this.b();
                }
            }, this.e.get() * 70);
        } else {
            this.e.set(0);
            String simpleName2 = getClass().getSimpleName();
            StringBuilder sb = new StringBuilder("Load finished for loader Id: ");
            sb.append(getLoaderId());
            sb.append(" retried 3 times and still no response");
            CLog.a(simpleName2);
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.CONTACT_LIST, "Load finished for loader Id: " + getLoaderId() + " retried 3 times and still no response");
            this.f15274d.onResponseReady(null);
        }
    }

    @Override // com.callapp.contacts.manager.usecase.UseCase
    public void a(UseCase.Callback<Response> callback) {
        this.e.incrementAndGet();
        this.f15274d = callback;
        int loaderId = getLoaderId();
        if (this.f15272b.a(loaderId) == null) {
            CLog.b(LoadContactsCountUseCase.class, "initLoader - query with loader id ".concat(String.valueOf(loaderId)), new Object[0]);
            this.f15272b.a(loaderId, this);
            return;
        }
        CLog.b(LoadContactsCountUseCase.class, "restartLoader - query with loader id ".concat(String.valueOf(loaderId)), new Object[0]);
        this.f15272b.b(loaderId, this);
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
        return this.f15271a != null;
    }
}
