package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinAdView;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.sdk.utils.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/b.class */
public class C1486b {
    /* renamed from: a */
    public static MaxAdFormat m5097a(Context context) {
        return AppLovinSdkUtils.isTablet(context) ? MaxAdFormat.LEADER : MaxAdFormat.BANNER;
    }

    /* renamed from: a */
    public static AppLovinAdSize m5095a(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "size");
        AppLovinAdSize appLovinAdSize = null;
        if (StringUtils.isValidString(attributeValue)) {
            appLovinAdSize = AppLovinAdSize.fromString(attributeValue);
        }
        return appLovinAdSize;
    }

    /* renamed from: a */
    public static String m5096a(Context context, AttributeSet attributeSet, String str, String str2) {
        if (context == null || attributeSet == null || str == null || str2 == null) {
            return null;
        }
        int attributeResourceValue = attributeSet.getAttributeResourceValue(str, str2, 0);
        return attributeResourceValue == 0 ? attributeSet.getAttributeValue(str, str2) : context.getResources().getString(attributeResourceValue);
    }

    /* renamed from: a */
    public static void m5093a(ViewGroup viewGroup, View view) {
        if (viewGroup == null) {
            return;
        }
        int indexOfChild = viewGroup.indexOfChild(view);
        if (indexOfChild == -1) {
            viewGroup.removeAllViews();
            return;
        }
        viewGroup.removeViews(0, indexOfChild);
        viewGroup.removeViews(1, viewGroup.getChildCount() - 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        if (r0 == 2038) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5094a(android.view.View r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L66
            r0 = r4
            r5 = r0
            r0 = r3
            android.view.View r0 = r0.getRootView()
            if (r0 == 0) goto L66
            r0 = r4
            r5 = r0
            r0 = r3
            android.view.View r0 = r0.getRootView()
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            boolean r0 = r0 instanceof android.view.WindowManager.LayoutParams
            if (r0 == 0) goto L66
            r0 = r3
            android.view.View r0 = r0.getRootView()
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.view.WindowManager$LayoutParams r0 = (android.view.WindowManager.LayoutParams) r0
            int r0 = r0.type
            r6 = r0
            r0 = r6
            r1 = 2002(0x7d2, float:2.805E-42)
            if (r0 == r1) goto L64
            r0 = r6
            r1 = 2007(0x7d7, float:2.812E-42)
            if (r0 == r1) goto L64
            r0 = r6
            r1 = 2003(0x7d3, float:2.807E-42)
            if (r0 == r1) goto L64
            r0 = r6
            r1 = 2010(0x7da, float:2.817E-42)
            if (r0 == r1) goto L64
            r0 = r6
            r1 = 2006(0x7d6, float:2.811E-42)
            if (r0 == r1) goto L64
            r0 = r4
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L66
            r0 = r4
            r5 = r0
            r0 = r6
            r1 = 2038(0x7f6, float:2.856E-42)
            if (r0 != r1) goto L66
        L64:
            r0 = 1
            r5 = r0
        L66:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.C1486b.m5094a(android.view.View):boolean");
    }

    /* renamed from: b */
    public static boolean m5092b(AttributeSet attributeSet) {
        boolean z = false;
        if (attributeSet != null) {
            z = false;
            if (attributeSet.getAttributeBooleanValue(AppLovinAdView.NAMESPACE, "loadAdOnCreate", false)) {
                z = true;
            }
        }
        return z;
    }
}
