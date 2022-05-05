package com.apptentive.android.sdk.storage;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/Saveable.class */
public interface Saveable extends Serializable {
    void notifyDataChanged();

    void setDataChangedListener(DataChangedListener dataChangedListener);
}
