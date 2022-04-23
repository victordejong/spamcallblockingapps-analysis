package io.bidmachine.unified;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedMediationParams.class */
public abstract class UnifiedMediationParams {

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams.class */
    public static class MappedUnifiedMediationParams extends UnifiedMediationParams {
        private DataProvider dataProvider;

        /* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider.class */
        public interface DataProvider {
            Map<String, Object> getData();
        }

        public MappedUnifiedMediationParams(DataProvider dataProvider) {
            this.dataProvider = dataProvider;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public boolean contains(String str) {
            return this.dataProvider.getData().containsKey(str);
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public boolean getBool(String str, boolean z) {
            return ((Boolean) getObject(str, Boolean.valueOf(z))).booleanValue();
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public double getDouble(String str, double d2) {
            return ((Double) getObject(str, Double.valueOf(d2))).doubleValue();
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public float getFloat(String str, float f) {
            return ((Float) getObject(str, Float.valueOf(f))).floatValue();
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public int getInt(String str, int i) {
            return ((Integer) getObject(str, Integer.valueOf(i))).intValue();
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public Integer getInteger(String str, Integer num) {
            return (Integer) getObject(str, num);
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public <T> T getObject(String str, T t) {
            T t2;
            return (str == null || (t2 = (T) this.dataProvider.getData().get(str)) == null) ? t : t2;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public String getString(String str, String str2) {
            return (String) getObject(str, str2);
        }
    }

    public abstract boolean contains(String str);

    public boolean getBool(String str) {
        return getBool(str, false);
    }

    public abstract boolean getBool(String str, boolean z);

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public abstract double getDouble(String str, double d2);

    public float getFloat(String str) {
        return getFloat(str, BitmapDescriptorFactory.HUE_RED);
    }

    public abstract float getFloat(String str, float f);

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public abstract int getInt(String str, int i);

    public Integer getInteger(String str) {
        return getInteger(str, null);
    }

    public abstract Integer getInteger(String str, Integer num);

    public <T> T getObject(String str) {
        return (T) getObject(str, null);
    }

    public <T> T getObject(String str, T t) {
        return null;
    }

    public String getString(String str) {
        return getString(str, null);
    }

    public abstract String getString(String str, String str2);
}
