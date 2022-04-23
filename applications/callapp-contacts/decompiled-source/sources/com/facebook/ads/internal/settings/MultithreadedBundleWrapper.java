package com.facebook.ads.internal.settings;

import android.os.Bundle;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/settings/MultithreadedBundleWrapper.class */
public class MultithreadedBundleWrapper {
    private final Bundle mBundle = new Bundle();

    public boolean getBoolean(String str) {
        boolean z;
        synchronized (this) {
            z = this.mBundle.getBoolean(str);
        }
        return z;
    }

    public boolean getBoolean(String str, boolean z) {
        boolean z2;
        synchronized (this) {
            z2 = this.mBundle.getBoolean(str, z);
        }
        return z2;
    }

    public Integer getInteger(String str) {
        synchronized (this) {
            if (!this.mBundle.containsKey(str)) {
                return null;
            }
            return Integer.valueOf(this.mBundle.getInt(str));
        }
    }

    public Serializable getSerializable(String str) {
        Serializable serializable;
        synchronized (this) {
            serializable = this.mBundle.getSerializable(str);
        }
        return serializable;
    }

    public String getString(String str, String str2) {
        String string;
        synchronized (this) {
            string = this.mBundle.getString(str, str2);
        }
        return string;
    }

    public String[] getStringArray(String str) {
        String[] stringArray;
        synchronized (this) {
            stringArray = this.mBundle.getStringArray(str);
        }
        return stringArray;
    }

    public ArrayList<String> getStringArrayList(String str) {
        ArrayList<String> stringArrayList;
        synchronized (this) {
            stringArrayList = this.mBundle.getStringArrayList(str);
        }
        return stringArrayList;
    }

    public void putBoolean(String str, boolean z) {
        synchronized (this) {
            this.mBundle.putBoolean(str, z);
        }
    }

    public void putInteger(String str, Integer num) {
        synchronized (this) {
            if (num != null) {
                this.mBundle.putInt(str, num.intValue());
            } else {
                this.mBundle.remove(str);
            }
        }
    }

    public void putSerializable(String str, Serializable serializable) {
        synchronized (this) {
            this.mBundle.putSerializable(str, serializable);
        }
    }

    public void putString(String str, String str2) {
        synchronized (this) {
            this.mBundle.putString(str, str2);
        }
    }

    public void putStringArray(String str, String[] strArr) {
        synchronized (this) {
            this.mBundle.putStringArray(str, strArr);
        }
    }

    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        synchronized (this) {
            this.mBundle.putStringArrayList(str, arrayList);
        }
    }

    public void reset(Bundle bundle) {
        synchronized (this) {
            this.mBundle.clear();
            this.mBundle.putAll(bundle);
        }
    }

    public Bundle toBundle() {
        return new Bundle(this.mBundle);
    }
}
