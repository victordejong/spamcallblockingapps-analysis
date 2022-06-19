package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorderCursor.class */
public final class CallRecorderCursor extends Cursor<CallRecorder> {
    private static final CallRecorder_.CallRecorderIdGetter ID_GETTER = CallRecorder_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = CallRecorder_.phoneOrIdKey.f62808c;
    private static final int __ID_date = CallRecorder_.date.f62808c;
    private static final int __ID_fileName = CallRecorder_.fileName.f62808c;
    private static final int __ID_duration = CallRecorder_.duration.f62808c;
    private static final int __ID_starred = CallRecorder_.starred.f62808c;
    private static final int __ID_note = CallRecorder_.note.f62808c;
    private static final int __ID_callType = CallRecorder_.callType.f62808c;
    private static final int __ID_isUploaded = CallRecorder_.isUploaded.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorderCursor$Factory.class */
    static final class Factory implements AbstractC17949b<CallRecorder> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<CallRecorder> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new CallRecorderCursor(transaction, j, boxStore);
        }
    }

    public CallRecorderCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, CallRecorder_.__INSTANCE, boxStore);
    }

    public final long getId(CallRecorder callRecorder) {
        return ID_GETTER.getId(callRecorder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    public final long put(CallRecorder callRecorder) {
        Long id = callRecorder.getId();
        String phoneOrIdKey = callRecorder.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String fileName = callRecorder.getFileName();
        int i2 = fileName != null ? __ID_fileName : 0;
        String note = callRecorder.getNote();
        int i3 = note != null ? __ID_note : 0;
        long j = this.cursor;
        ?? longValue = id != null ? id.longValue() : false;
        int i4 = __ID_starred;
        boolean starred = callRecorder.getStarred();
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, fileName, i3, note, 0, null, __ID_date, callRecorder.getDate(), __ID_duration, callRecorder.getDuration(), __ID_callType, callRecorder.getCallType(), i4, starred ? 1 : 0, __ID_isUploaded, callRecorder.isUploaded() ? 1 : 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        callRecorder.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
