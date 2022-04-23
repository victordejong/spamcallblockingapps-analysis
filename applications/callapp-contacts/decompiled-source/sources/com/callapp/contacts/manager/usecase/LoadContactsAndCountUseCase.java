package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import androidx.h.a.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.cursor.ContactsAggregatorCursor;
import com.callapp.contacts.manager.usecase.UseCase;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase.class */
public class LoadContactsAndCountUseCase implements UseCase<ContactsAggregatorCursor> {

    /* renamed from: a  reason: collision with root package name */
    private final LoadContactsUseCase f15275a;

    /* renamed from: b  reason: collision with root package name */
    private final LoadContactsCountUseCase f15276b;

    /* renamed from: c  reason: collision with root package name */
    private UseCase.Callback<ContactsAggregatorCursor> f15277c;

    public LoadContactsAndCountUseCase(Context context, a aVar) {
        this(new LoadContactsUseCase(context, aVar), new LoadContactsCountUseCase(context, aVar));
    }

    private LoadContactsAndCountUseCase(LoadContactsUseCase loadContactsUseCase, LoadContactsCountUseCase loadContactsCountUseCase) {
        this.f15275a = loadContactsUseCase;
        this.f15276b = loadContactsCountUseCase;
    }

    private void a() {
        if (isReady()) {
            ContactsAggregatorCursor contactsAggregatorCursor = new ContactsAggregatorCursor((Cursor) this.f15275a.f15271a, ((Integer) this.f15276b.f15271a).intValue());
            if (!contactsAggregatorCursor.isClosed()) {
                this.f15277c.onResponseReady(contactsAggregatorCursor);
            } else {
                a(this.f15277c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Cursor cursor) {
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) {
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.f15276b.a(new UseCase.Callback() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s
            @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
            public final void onResponseReady(Object obj) {
                LoadContactsAndCountUseCase.this.a((Integer) obj);
            }
        });
        this.f15275a.a(new UseCase.Callback() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY
            @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
            public final void onResponseReady(Object obj) {
                LoadContactsAndCountUseCase.this.a((Cursor) obj);
            }
        });
    }

    @Override // com.callapp.contacts.manager.usecase.UseCase
    public final void a(UseCase.Callback<ContactsAggregatorCursor> callback) {
        CLog.b(LoadContactsAndCountUseCase.class, "executeRequest - query", new Object[0]);
        this.f15277c = callback;
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$cfkQu_FbYNCS71XdpADeZ9snCN4
            @Override // java.lang.Runnable
            public final void run() {
                LoadContactsAndCountUseCase.this.b();
            }
        });
    }

    public boolean isReady() {
        return this.f15275a.isReady() && this.f15276b.isReady();
    }
}
