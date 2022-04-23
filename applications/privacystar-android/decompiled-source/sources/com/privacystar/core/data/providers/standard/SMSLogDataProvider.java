package com.privacystar.core.data.providers.standard;

import android.database.Cursor;
import com.privacystar.core.data.model.LogItemFields;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/standard/SMSLogDataProvider.class */
public class SMSLogDataProvider extends NativeLogDataProvider {
    public SMSLogDataProvider() {
        setup();
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getCallColumn() {
        return "address";
    }

    @Override // com.privacystar.core.data.providers.CursorDataProvider
    public Cursor getDataProvider() {
        return null;
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getDateColumn() {
        return LogItemFields.DATE;
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getIdColumn() {
        return "_id";
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getTypeColumn() {
        return "type";
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    boolean isCall() {
        return false;
    }
}
