package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import androidx.h.a.a;
import androidx.h.b.c;
import com.callapp.contacts.manager.usecase.UseCase;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/LoadContactsCountUseCase.class */
public class LoadContactsCountUseCase extends BaseLoadContactsUseCase<Integer> {
    public LoadContactsCountUseCase(Context context, a aVar) {
        super(context, aVar);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    protected final /* synthetic */ Integer a(Cursor cursor) {
        return Integer.valueOf(cursor.getCount());
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    public final /* bridge */ /* synthetic */ void a(c cVar, Cursor cursor) {
        super.a((c<Cursor>) cVar, cursor);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase, com.callapp.contacts.manager.usecase.UseCase
    public final /* bridge */ /* synthetic */ void a(UseCase.Callback callback) {
        super.a(callback);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    protected int getLoaderId() {
        return 2;
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    String[] getProjection() {
        return new String[]{"contact_id"};
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    public /* bridge */ /* synthetic */ boolean isReady() {
        return super.isReady();
    }
}
