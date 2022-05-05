package com.mopub.nativeads;

import android.widget.ImageView;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p622k.p623a.p624a.p625a.C14698a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, m815d2 = {"Lcom/mopub/nativeads/CriteoUtils;", "", "()V", "setAdChoiceView", "", "criteoStaticNativeAd", "Lcom/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoStaticNativeAd;", "adChoiceView", "Landroid/widget/ImageView;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CriteoUtils.class */
public final class CriteoUtils {
    public static final CriteoUtils INSTANCE = new CriteoUtils();

    public static final void setAdChoiceView(CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd, ImageView imageView) {
        C15149k.m377b(criteoStaticNativeAd, "criteoStaticNativeAd");
        C15149k.m377b(imageView, "adChoiceView");
        criteoStaticNativeAd.setAdChoiceClickableView(imageView);
        C6272d.m23429a(imageView, 12.0f);
        imageView.setVisibility(0);
        C6272d.m23426a(criteoStaticNativeAd.getPrivacyInformationIconImageUrl(), imageView, true, true, 0, C14698a.EnumC14700b.ALL, null);
    }
}
