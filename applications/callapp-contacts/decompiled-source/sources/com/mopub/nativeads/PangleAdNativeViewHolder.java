package com.mopub.nativeads;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.adapter.MediaView;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdNativeViewHolder.class */
public class PangleAdNativeViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private static PangleAdNativeViewHolder f34630a = new PangleAdNativeViewHolder();
    public TextView mAdvertiserNameView;
    public TextView mCallToActionView;
    public TextView mDescription;
    public ImageView mIcon;
    public ImageView mLogoView;
    public MediaView mMediaView;
    public TextView mTitleView;

    private PangleAdNativeViewHolder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PangleAdNativeViewHolder a(View view, PangleAdViewBinder pangleAdViewBinder) {
        PangleAdNativeViewHolder pangleAdNativeViewHolder = new PangleAdNativeViewHolder();
        try {
            pangleAdNativeViewHolder.mTitleView = (TextView) view.findViewById(pangleAdViewBinder.mTitleId);
            pangleAdNativeViewHolder.mDescription = (TextView) view.findViewById(pangleAdViewBinder.mDescriptionTextId);
            pangleAdNativeViewHolder.mCallToActionView = (TextView) view.findViewById(pangleAdViewBinder.mCallToActionId);
            pangleAdNativeViewHolder.mAdvertiserNameView = (TextView) view.findViewById(pangleAdViewBinder.mSourceId);
            pangleAdNativeViewHolder.mIcon = (ImageView) view.findViewById(pangleAdViewBinder.mIconImageId);
            pangleAdNativeViewHolder.mLogoView = (ImageView) view.findViewById(pangleAdViewBinder.mLogoViewId);
            pangleAdNativeViewHolder.mMediaView = (MediaView) view.findViewById(pangleAdViewBinder.mMediaViewId);
            return pangleAdNativeViewHolder;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not cast from id in PangleAdViewBinder to expected View type", e);
            return f34630a;
        }
    }
}
