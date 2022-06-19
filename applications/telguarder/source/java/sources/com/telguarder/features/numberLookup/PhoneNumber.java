package com.telguarder.features.numberLookup;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumber.class */
public class PhoneNumber implements Serializable {
    public String primary;
    public String secondary;

    public List<String> asList() {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.primary)) {
            arrayList.add(this.primary);
        }
        if (!TextUtils.isEmpty(this.secondary)) {
            arrayList.add(this.secondary);
        }
        return arrayList;
    }

    public String getForSharing() {
        String str = "";
        if (!TextUtils.isEmpty(this.primary)) {
            str = "" + this.primary;
        }
        String str2 = str;
        if (!TextUtils.isEmpty(this.secondary)) {
            String str3 = str;
            if (!TextUtils.isEmpty(str)) {
                str3 = str + ", ";
            }
            str2 = str3 + this.secondary;
        }
        return str2;
    }
}
