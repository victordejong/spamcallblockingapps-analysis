package com.privacystar.core.data.providers.standard;

import android.database.Cursor;
import android.database.StaleDataException;
import android.support.annotation.NonNull;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.call_details.CallEvent;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.providers.CursorDataProvider;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/standard/NativeLogDataProvider.class */
public abstract class NativeLogDataProvider extends CursorDataProvider<CallDetails> {
    private String getCnameField(Cursor cursor) {
        String cnamField = InformationUtil.getCnamField(PSApplication.context());
        return !Text.isBlank(cnamField) ? cursor.getString(cursor.getColumnIndex(cnamField)) : "";
    }

    @NonNull
    private CallDetails populateItemImpl(@NonNull String str, @NonNull String str2, long j, int i, int i2) {
        CallHistoryHelper.CallDirection callDirection = CallHistoryHelper.getInstance().getCallDirection(i, isCall());
        Caller caller = CallerFactory.getInstance().getCaller(str);
        if (!Text.isBlank(str2) && Text.isBlank(caller.getDisplayName())) {
            caller.setContactName(str2);
        }
        CallEvent callEvent = new CallEvent();
        callEvent.setDate(j);
        callEvent.setDirection(callDirection);
        callEvent.setNativeId(i2);
        if (isCall()) {
            callEvent.setType(CallEvent.EventType.CALL);
        } else {
            callEvent.setType(CallEvent.EventType.SMS);
        }
        return new CallDetails(caller, callEvent);
    }

    abstract String getCallColumn();

    abstract String getDateColumn();

    abstract String getIdColumn();

    abstract String getTypeColumn();

    abstract boolean isCall();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.CursorDataProvider
    public CallDetails populateItem(Cursor cursor) {
        String str;
        long j;
        int i;
        int i2;
        try {
            int columnIndex = cursor.getColumnIndex(getCallColumn());
            int columnIndex2 = cursor.getColumnIndex(getDateColumn());
            int columnIndex3 = cursor.getColumnIndex(getTypeColumn());
            int columnIndex4 = cursor.getColumnIndex(getIdColumn());
            if (columnIndex != -1) {
                str = cursor.getString(columnIndex);
            } else {
                str = "";
                Timber.m25w("Couldn't find number column index in cursor.", new Object[0]);
            }
            String str2 = "";
            if (isCall()) {
                str2 = getCnameField(cursor);
            }
            if (columnIndex2 != -1) {
                j = cursor.getLong(columnIndex2);
            } else {
                j = 0;
                Timber.m25w("Couldn't find date column index in cursor.", new Object[0]);
            }
            if (columnIndex3 != -1) {
                i = cursor.getInt(columnIndex3);
            } else {
                Timber.m25w("Couldn't find type column index in cursor.", new Object[0]);
                i = -1;
            }
            if (columnIndex4 != -1) {
                i2 = cursor.getInt(columnIndex4);
            } else {
                Timber.m25w("Couldn't find id column index in cursor.", new Object[0]);
                i2 = 0;
            }
            return populateItemImpl(str, str2, j, i, i2);
        } catch (StaleDataException e) {
            Timber.m23w(e, "Cursor was closed during use.", new Object[0]);
            return null;
        } catch (IllegalStateException e2) {
            Timber.m23w(e2, "Cursor was unusable.", new Object[0]);
            return null;
        }
    }
}
