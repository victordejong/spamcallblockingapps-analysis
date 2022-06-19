package com.callapp.contacts.manager.usecase;

import android.content.Context;
import android.database.Cursor;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.p049h.p051b.C1170c;
import com.callapp.contacts.manager.usecase.UseCase;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/LoadContactsUseCase.class */
public class LoadContactsUseCase extends BaseLoadContactsUseCase<Cursor> {
    public LoadContactsUseCase(Context context, AbstractC1160a abstractC1160a) {
        super(context, abstractC1160a);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ Cursor mo28113a(Cursor cursor) {
        return cursor;
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo28112a(C1170c c1170c, Cursor cursor) {
        super.mo19552a((C1170c<Cursor>) c1170c, cursor);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase, com.callapp.contacts.manager.usecase.UseCase
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo28111a(UseCase.Callback callback) {
        super.mo28111a(callback);
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    protected int getLoaderId() {
        return 1;
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    String[] getProjection() {
        return new String[]{"contact_id", "display_name", "data1", "photo_uri", "data2", "lookup", "data1", "mimetype", "starred"};
    }

    @Override // com.callapp.contacts.manager.usecase.BaseLoadContactsUseCase
    public /* bridge */ /* synthetic */ boolean isReady() {
        return super.isReady();
    }
}
