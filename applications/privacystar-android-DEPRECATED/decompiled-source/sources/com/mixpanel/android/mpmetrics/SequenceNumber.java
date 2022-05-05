package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SequenceNumber.class */
public class SequenceNumber {
    @NonNull
    private static final String KEY_SEQ_NO = "seq_no";
    @NonNull
    private static final String TAG = "SequenceNumber";
    private static long sequenceNumber;
    @Nullable
    private static SequenceNumber sequenceNumberInstance;
    @NonNull
    private final SharedPreferences preferences;

    private SequenceNumber(@NonNull Context context) {
        this.preferences = context.getSharedPreferences(TAG, 0);
        sequenceNumber = this.preferences.getLong(KEY_SEQ_NO, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static SequenceNumber getInstance(@NonNull Context context) {
        SequenceNumber sequenceNumber2 = sequenceNumberInstance;
        SequenceNumber sequenceNumber3 = sequenceNumber2;
        if (sequenceNumber2 == null) {
            synchronized (TAG) {
                try {
                    SequenceNumber sequenceNumber4 = sequenceNumberInstance;
                    sequenceNumber3 = sequenceNumber4;
                    if (sequenceNumber4 == null) {
                        sequenceNumber3 = new SequenceNumber(context);
                        sequenceNumberInstance = sequenceNumber3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sequenceNumber3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getSequenceNumberAndIncrement() {
        long j;
        synchronized (this) {
            j = sequenceNumber;
            SharedPreferences.Editor edit = this.preferences.edit();
            long j2 = sequenceNumber + 1;
            sequenceNumber = j2;
            edit.putLong(KEY_SEQ_NO, j2).apply();
        }
        return j;
    }
}
