package com.android.vcard;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardProperty.class */
public class VCardProperty {
    private static final String LOG_TAG = "vCard";
    private byte[] mByteValue;
    private List<String> mGroupList;
    private String mName;
    private Map<String, Collection<String>> mParameterMap = new HashMap();
    private String mRawValue;
    private List<String> mValueList;

    public void addGroup(String str) {
        if (this.mGroupList == null) {
            this.mGroupList = new ArrayList();
        }
        this.mGroupList.add(str);
    }

    public void addParameter(String str, String str2) {
        Collection<String> collection;
        if (!this.mParameterMap.containsKey(str)) {
            collection = str.equals(VCardConstants.PARAM_TYPE) ? new HashSet<>() : new ArrayList<>();
            this.mParameterMap.put(str, collection);
        } else {
            collection = this.mParameterMap.get(str);
        }
        collection.add(str2);
    }

    public void addValues(List<String> list) {
        if (this.mValueList == null) {
            this.mValueList = new ArrayList(list);
        } else {
            this.mValueList.addAll(list);
        }
    }

    public void addValues(String... strArr) {
        if (this.mValueList == null) {
            this.mValueList = Arrays.asList(strArr);
        } else {
            this.mValueList.addAll(Arrays.asList(strArr));
        }
    }

    public byte[] getByteValue() {
        return this.mByteValue;
    }

    public List<String> getGroupList() {
        return this.mGroupList;
    }

    public String getName() {
        return this.mName;
    }

    public Map<String, Collection<String>> getParameterMap() {
        return this.mParameterMap;
    }

    public Collection<String> getParameters(String str) {
        return this.mParameterMap.get(str);
    }

    public String getRawValue() {
        return this.mRawValue;
    }

    public List<String> getValueList() {
        return this.mValueList;
    }

    public void setByteValue(byte[] bArr) {
        this.mByteValue = bArr;
    }

    public void setName(String str) {
        if (this.mName != null) {
            Log.w(LOG_TAG, String.format("Property name is re-defined (existing: %s, requested: %s", this.mName, str));
        }
        this.mName = str;
    }

    public void setParameter(String str, String str2) {
        this.mParameterMap.clear();
        addParameter(str, str2);
    }

    public void setRawValue(String str) {
        this.mRawValue = str;
    }

    public void setValues(List<String> list) {
        this.mValueList = list;
    }

    public void setValues(String... strArr) {
        this.mValueList = Arrays.asList(strArr);
    }
}
