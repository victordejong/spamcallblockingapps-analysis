package com.mopub.nativeads;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.gogolook.adsdk.R$drawable;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import p081h.p160h.p161a.p171q.C6287a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/SdkUtilsAdRenderer.class */
public class SdkUtilsAdRenderer {
    @DrawableRes

    /* renamed from: a */
    public static final int[] f9278a = {R$drawable.icon_ad_circle_board, R$drawable.icon_ad_circle_card, R$drawable.icon_ad_circle_speaker, R$drawable.icon_ad_full_board, R$drawable.icon_ad_full_card, R$drawable.icon_ad_full_speaker};

    /* renamed from: a */
    public static boolean m30073a(List<String> list, String str) {
        return list == null || !list.contains(str);
    }

    public static int dp2px(@NonNull Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @DrawableRes
    public static int getDefaultAdIconRandomly() {
        return f9278a[new Random().nextInt(f9278a.length)];
    }

    public static void setupFbAdContainer(@NonNull NativeAd nativeAd, @NonNull C6287a aVar, @NonNull ViewGroup viewGroup, boolean z, boolean z2, @Nullable MediaView mediaView, @Nullable MediaView mediaView2, @Nullable List<String> list) {
        String str = "[setupFbAdContainer] unclickableAreas = " + list;
        Context context = viewGroup.getContext();
        if (context != null) {
            ArrayList arrayList = new ArrayList();
            if (aVar.f15569d != null && m30073a(list, "call_to_action")) {
                arrayList.add(aVar.f15569d);
            }
            if (aVar.f15571f != null && m30073a(list, "icon_image")) {
                arrayList.add(aVar.f15571f);
            }
            if (aVar.f15568c != null && m30073a(list, "text")) {
                arrayList.add(aVar.f15568c);
            }
            if (aVar.f15567b != null && m30073a(list, "title")) {
                arrayList.add(aVar.f15567b);
            }
            if (mediaView != null && m30073a(list, "main_image")) {
                arrayList.add(mediaView);
            }
            if (mediaView2 != null && m30073a(list, "icon_image")) {
                arrayList.add(mediaView2);
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList.size() == 0) {
                arrayList2 = null;
            }
            if (mediaView != null && mediaView2 != null) {
                nativeAd.registerViewForInteraction(aVar.f15566a, mediaView, mediaView2, arrayList2);
            } else if (mediaView != null && mediaView2 == null) {
                nativeAd.registerViewForInteraction(aVar.f15566a, mediaView, aVar.f15571f, arrayList2);
            } else if (mediaView == null && mediaView2 != null) {
                nativeAd.registerViewForInteraction(aVar.f15566a, mediaView2, arrayList2);
            }
            AdChoicesView adChoicesView = new AdChoicesView(context, nativeAd, z2);
            if (z) {
                int dp2px = dp2px(context, 4.0f);
                adChoicesView.setPadding(dp2px, dp2px, dp2px, dp2px);
            }
            viewGroup.addView(adChoicesView);
        }
    }
}
