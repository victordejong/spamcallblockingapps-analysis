package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import androidx.p049h.p050a.AbstractC1160a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.cursor.ContactsAggregatorCursor;
import com.callapp.contacts.manager.usecase.UseCase;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase.class */
public class LoadContactsAndCountUseCase implements UseCase<ContactsAggregatorCursor> {

    /* renamed from: a */
    private final LoadContactsUseCase f26730a;

    /* renamed from: b */
    private final LoadContactsCountUseCase f26731b;

    /* renamed from: c */
    private UseCase.Callback<ContactsAggregatorCursor> f26732c;

    public LoadContactsAndCountUseCase(Context context, AbstractC1160a abstractC1160a) {
        this(new LoadContactsUseCase(context, abstractC1160a), new LoadContactsCountUseCase(context, abstractC1160a));
    }

    private LoadContactsAndCountUseCase(LoadContactsUseCase loadContactsUseCase, LoadContactsCountUseCase loadContactsCountUseCase) {
        this.f26730a = loadContactsUseCase;
        this.f26731b = loadContactsCountUseCase;
    }

    /* renamed from: a */
    private void m28117a() {
        if (isReady()) {
            ContactsAggregatorCursor contactsAggregatorCursor = new ContactsAggregatorCursor((Cursor) this.f26730a.f26724a, ((Integer) this.f26731b.f26724a).intValue());
            if (!contactsAggregatorCursor.isClosed()) {
                this.f26732c.onResponseReady(contactsAggregatorCursor);
            } else {
                mo28111a(this.f26732c);
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m28116a(Cursor cursor) {
        m28117a();
    }

    /* renamed from: a */
    public /* synthetic */ void m28115a(Integer num) {
        m28117a();
    }

    /* renamed from: b */
    public /* synthetic */ void m28114b() {
        this.f26731b.mo28111a(new UseCase.Callback() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s
            @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
            public final void onResponseReady(Object obj) {
                LoadContactsAndCountUseCase.this.m28115a((Integer) obj);
            }
        });
        this.f26730a.mo28111a(new UseCase.Callback() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY
            @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
            public final void onResponseReady(Object obj) {
                LoadContactsAndCountUseCase.this.m28116a((Cursor) obj);
            }
        });
    }

    @Override // com.callapp.contacts.manager.usecase.UseCase
    /* renamed from: a */
    public final void mo28111a(UseCase.Callback<ContactsAggregatorCursor> callback) {
        CLog.m27597b(LoadContactsAndCountUseCase.class, "executeRequest - query", new Object[0]);
        this.f26732c = callback;
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.manager.usecase._$$Lambda$LoadContactsAndCountUseCase$cfkQu_FbYNCS71XdpADeZ9snCN4
            @Override // java.lang.Runnable
            public final void run() {
                LoadContactsAndCountUseCase.this.m28114b();
            }
        });
    }

    public boolean isReady() {
        return this.f26730a.isReady() && this.f26731b.isReady();
    }
}
