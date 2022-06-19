package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdUtils.class */
public class AdUtils {
    public static final String REQUIRED_ACTIVITY = "com.amazon.device.ads.AdActivity";
    private static AdUtilsExecutor executor = new AdUtilsExecutor();

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdUtils$AdUtilsExecutor.class */
    public static class AdUtilsExecutor {
        private boolean hasRequiredActivities = false;
        private final HashSet<String> requiredActivities;

        public AdUtilsExecutor() {
            HashSet<String> hashSet = new HashSet<>();
            this.requiredActivities = hashSet;
            hashSet.add(AdUtils.REQUIRED_ACTIVITY);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
            if (r0 == com.google.android.libraries.places.api.model.PlaceLikelihood.LIKELIHOOD_MIN_VALUE) goto L6;
         */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        /* JADX WARN: Type inference failed for: r0v5, types: [double] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public double calculateScalingMultiplier(int r6, int r7, int r8, int r9) {
            /*
                r5 = this;
                r0 = r8
                double r0 = (double) r0
                r1 = r6
                double r1 = (double) r1
                double r0 = r0 / r1
                r10 = r0
                r0 = r9
                double r0 = (double) r0
                r1 = r7
                double r1 = (double) r1
                double r0 = r0 / r1
                r12 = r0
                r0 = r12
                r1 = r10
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L22
                r0 = r10
                r14 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L31
            L22:
                r0 = r10
                r14 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L31
                r0 = r12
                r14 = r0
            L31:
                r0 = r14
                r12 = r0
                r0 = r14
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L3f
                r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                r12 = r0
            L3f:
                r0 = r12
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.AdUtils.AdUtilsExecutor.calculateScalingMultiplier(int, int, int, int):double");
        }

        public boolean checkDefinedActivities(Context context) {
            if (this.hasRequiredActivities) {
                return true;
            }
            HashSet hashSet = new HashSet();
            try {
                for (ActivityInfo activityInfo : context.getPackageManager().getPackageArchiveInfo(context.getPackageCodePath(), 1).activities) {
                    hashSet.add(activityInfo.name);
                }
                boolean containsAll = hashSet.containsAll(this.requiredActivities);
                this.hasRequiredActivities = containsAll;
                return containsAll;
            } catch (Exception e) {
                this.hasRequiredActivities = true;
                return true;
            }
        }

        public int deviceIndependentPixelToPixel(int i) {
            return (int) (i == -1 ? i : i * getScalingFactorAsFloat());
        }

        public float getScalingFactorAsFloat() {
            WindowManager windowManager = (WindowManager) AdRegistration.getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.scaledDensity;
        }

        public int pixelToDeviceIndependentPixel(int i) {
            return (int) (i / getScalingFactorAsFloat());
        }
    }

    private AdUtils() {
    }

    public static double calculateScalingMultiplier(int i, int i2, int i3, int i4) {
        return executor.calculateScalingMultiplier(i, i2, i3, i4);
    }

    public static boolean checkDefinedActivities(Context context) {
        return executor.checkDefinedActivities(context);
    }

    public static int deviceIndependentPixelToPixel(int i) {
        return executor.deviceIndependentPixelToPixel(i);
    }

    public static float getScalingFactorAsFloat() {
        return executor.getScalingFactorAsFloat();
    }

    public static int pixelToDeviceIndependentPixel(int i) {
        return executor.pixelToDeviceIndependentPixel(i);
    }
}
