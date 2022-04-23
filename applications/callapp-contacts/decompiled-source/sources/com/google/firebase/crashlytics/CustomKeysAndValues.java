package com.google.firebase.crashlytics;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CustomKeysAndValues.class */
public class CustomKeysAndValues {
    final Map<String, String> keysAndValues;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CustomKeysAndValues$Builder.class */
    public static class Builder {
        private Map<String, String> keysAndValues = new HashMap();

        public CustomKeysAndValues build() {
            return new CustomKeysAndValues(this);
        }

        public Builder putBoolean(String str, boolean z) {
            this.keysAndValues.put(str, Boolean.toString(z));
            return this;
        }

        public Builder putDouble(String str, double d2) {
            this.keysAndValues.put(str, Double.toString(d2));
            return this;
        }

        public Builder putFloat(String str, float f) {
            this.keysAndValues.put(str, Float.toString(f));
            return this;
        }

        public Builder putInt(String str, int i) {
            this.keysAndValues.put(str, Integer.toString(i));
            return this;
        }

        public Builder putLong(String str, long j) {
            this.keysAndValues.put(str, Long.toString(j));
            return this;
        }

        public Builder putString(String str, String str2) {
            this.keysAndValues.put(str, str2);
            return this;
        }
    }

    CustomKeysAndValues(Builder builder) {
        this.keysAndValues = builder.keysAndValues;
    }
}
