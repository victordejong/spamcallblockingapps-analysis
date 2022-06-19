package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeRendererHelper.class */
public class NativeRendererHelper {

    /* renamed from: com.mopub.nativeads.NativeRendererHelper$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeRendererHelper$a.class */
    public static final class View$OnClickListenerC2710a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9115a;

        /* renamed from: b */
        public final /* synthetic */ String f9116b;

        public View$OnClickListenerC2710a(Context context, String str) {
            this.f9115a = context;
            this.f9116b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9115a, this.f9116b);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeRendererHelper$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeRendererHelper$b.class */
    public static final class View$OnClickListenerC2711b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f9117a;

        public View$OnClickListenerC2711b(View view) {
            this.f9117a = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9117a.performClick();
        }
    }

    public static void addCtaButton(TextView textView, View view, String str) {
        addTextView(textView, str);
        if (textView == null || view == null) {
            return;
        }
        textView.setOnClickListener(new View$OnClickListenerC2711b(view));
    }

    public static void addPrivacyInformationIcon(ImageView imageView, String str, String str2) {
        if (imageView == null) {
            return;
        }
        if (str2 == null) {
            imageView.setImageDrawable(null);
            imageView.setOnClickListener(null);
            imageView.setVisibility(4);
            return;
        }
        Context context = imageView.getContext();
        if (context == null) {
            return;
        }
        if (str == null) {
            imageView.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(context));
        } else {
            NativeImageHelper.loadImageView(str, imageView);
        }
        imageView.setOnClickListener(new View$OnClickListenerC2710a(context, str2));
        imageView.setVisibility(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void addSponsoredView(java.lang.String r7, android.widget.TextView r8) {
        /*
            r0 = r8
            if (r0 != 0) goto L5
            return
        L5:
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L12
            r0 = r8
            r1 = 4
            r0.setVisibility(r1)
            return
        L12:
            r0 = r8
            android.content.Context r0 = r0.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L28 java.util.IllegalFormatException -> L3b
            int r1 = com.mopub.mobileads.native_static.C2696R.string.com_mopub_nativeads_sponsored_by     // Catch: android.content.res.Resources.NotFoundException -> L28 java.util.IllegalFormatException -> L3b
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: android.content.res.Resources.NotFoundException -> L28 java.util.IllegalFormatException -> L3b
            r3 = r2
            r4 = 0
            r5 = r7
            r3[r4] = r5     // Catch: android.content.res.Resources.NotFoundException -> L28 java.util.IllegalFormatException -> L3b
            java.lang.String r0 = r0.getString(r1, r2)     // Catch: android.content.res.Resources.NotFoundException -> L28 java.util.IllegalFormatException -> L3b
            r9 = r0
            goto L4d
        L28:
            r9 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Unable to format sponsored by String."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            goto L4b
        L3b:
            r9 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Unable to format sponsored by String."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
        L4b:
            r0 = r7
            r9 = r0
        L4d:
            r0 = r9
            r1 = r7
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L64
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "The formatted sponsored String does not include the sponsor. Please include %s in the com_mopub_nativeads_sponsored_by translation."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
        L64:
            r0 = r8
            r1 = r9
            addTextView(r0, r1)
            r0 = r8
            r1 = 0
            r0.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.NativeRendererHelper.addSponsoredView(java.lang.String, android.widget.TextView):void");
    }

    public static void addTextView(TextView textView, String str) {
        if (textView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8725C2("Attempted to add text (", str, ") to null TextView."));
            return;
        }
        textView.setText((CharSequence) null);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to set TextView contents to null.");
        } else {
            textView.setText(str);
        }
    }

    public static void updateExtras(View view, Map<String, Integer> map, Map<String, Object> map2) {
        if (view == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to bind extras on a null main view.");
            return;
        }
        for (String str : map.keySet()) {
            View findViewById = view.findViewById(map.get(str).intValue());
            Object obj = map2.get(str);
            if (findViewById instanceof ImageView) {
                ImageView imageView = (ImageView) findViewById;
                imageView.setImageDrawable(null);
                Object obj2 = map2.get(str);
                if (obj2 != null && (obj2 instanceof String)) {
                    NativeImageHelper.loadImageView((String) obj2, imageView);
                }
            } else if (findViewById instanceof TextView) {
                TextView textView = (TextView) findViewById;
                textView.setText((CharSequence) null);
                if (obj instanceof String) {
                    addTextView(textView, (String) obj);
                }
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8725C2("View bound to ", str, " should be an instance of TextView or ImageView."));
            }
        }
    }
}
