package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/CustomData.class */
public class CustomData extends HashMap<String, Serializable> implements Saveable {
    private static final long serialVersionUID = 1;
    private transient DataChangedListener listener;

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        super.clear();
        notifyDataChanged();
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        DataChangedListener dataChangedListener = this.listener;
        if (dataChangedListener != null) {
            dataChangedListener.onDataChanged();
        }
    }

    public Serializable put(String str, Serializable serializable) {
        Serializable serializable2 = (Serializable) super.put((CustomData) str, (String) serializable);
        notifyDataChanged();
        return serializable2;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends String, ? extends Serializable> map) {
        super.putAll(map);
        notifyDataChanged();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Serializable remove(Object obj) {
        Serializable serializable = (Serializable) super.remove(obj);
        notifyDataChanged();
        return serializable;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
    }

    public com.apptentive.android.sdk.model.CustomData toJson() {
        try {
            com.apptentive.android.sdk.model.CustomData customData = new com.apptentive.android.sdk.model.CustomData();
            for (String str : keySet()) {
                customData.put(str, get(str));
            }
            return customData;
        } catch (JSONException e) {
            ApptentiveLog.m15641e(e, "Exception while creating custom data", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
