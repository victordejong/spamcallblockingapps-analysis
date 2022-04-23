package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.bytedance.sdk.openadsdk.R;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/MediationAdapterUtil.class */
public class MediationAdapterUtil {
    public static void addNativeFeedMainView(Context context, int i, MediaView mediaView, View view, List<TTImage> list) {
        TTImage tTImage;
        if (context != null && mediaView != null) {
            if (i == 3 || i == 2 || i == 16 || i == 4 || i == 33) {
                View inflate = LayoutInflater.from(context).inflate(x.f(context, "tt_pangle_native_image_video_layout"), (ViewGroup) null);
                if (inflate != null) {
                    ImageView imageView = (ImageView) inflate.findViewById(x.e(context, "tt_main_image"));
                    LinearLayout linearLayout = (LinearLayout) inflate.findViewById(x.e(context, "tt_layout_image_group"));
                    if (i != 4) {
                        imageView.setVisibility(0);
                        linearLayout.setVisibility(8);
                        if (list != null && !list.isEmpty() && (tTImage = list.get(0)) != null && tTImage.isValid()) {
                            e.c().a(tTImage.getImageUrl(), imageView);
                        }
                    } else if (list != null && list.size() >= 3) {
                        ImageView imageView2 = (ImageView) inflate.findViewById(x.e(context, "tt_group_image1"));
                        ImageView imageView3 = (ImageView) inflate.findViewById(x.e(context, "tt_group_image2"));
                        ImageView imageView4 = (ImageView) inflate.findViewById(x.e(context, "tt_group_image3"));
                        imageView.setVisibility(8);
                        linearLayout.setVisibility(0);
                        TTImage tTImage2 = list.get(0);
                        TTImage tTImage3 = list.get(1);
                        TTImage tTImage4 = list.get(2);
                        if (!(tTImage2 == null || !tTImage2.isValid() || imageView2 == null)) {
                            e.c().a(tTImage2.getImageUrl(), imageView2);
                        }
                        if (!(tTImage3 == null || !tTImage3.isValid() || imageView3 == null)) {
                            e.c().a(tTImage4.getImageUrl(), imageView3);
                        }
                        if (!(tTImage4 == null || !tTImage4.isValid() || imageView4 == null)) {
                            e.c().a(tTImage4.getImageUrl(), imageView3);
                        }
                    }
                    mediaView.removeAllViews();
                    mediaView.addView(inflate, -1, -1);
                }
            } else if ((i == 5 || i == 15 || i == 50) && view != null && view.getParent() == null) {
                mediaView.removeAllViews();
                mediaView.addView(view, -1, -1);
            }
        }
    }

    public static View setAdDataAndBuildBannerView(Context context, TTNativeAd tTNativeAd, TTNativeAd.AdInteractionListener adInteractionListener, float f, float f2) {
        TTImage tTImage;
        if (context == null || tTNativeAd == null || adInteractionListener == null) {
            return null;
        }
        float f3 = f / f2;
        View inflate = f3 < 4.0f ? LayoutInflater.from(context).inflate(x.f(context, "tt_pangle_ad_banner_layout_600_300"), (ViewGroup) null, false) : LayoutInflater.from(context).inflate(x.f(context, "tt_pangle_ad_banner_layout_600_150"), (ViewGroup) null, false);
        TextView textView = (TextView) inflate.findViewById(R.id.tt_pangle_ad_title);
        if (textView != null) {
            textView.setText(tTNativeAd.getTitle());
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.tt_pangle_ad_content);
        if (textView2 != null) {
            textView2.setText(tTNativeAd.getDescription());
        }
        Button button = (Button) inflate.findViewById(R.id.tt_pangle_ad_btn);
        ViewGroup viewGroup = (ViewGroup) inflate.findViewById(R.id.tt_pangle_ad_image_layout);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.tt_pangle_ad_main_img);
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.tt_pangle_ad_content_layout);
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.tt_pangle_ad_icon_adapter);
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams2 = imageView != null ? imageView.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams3 = viewGroup2 != null ? viewGroup2.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams4 = button != null ? button.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams5 = imageView2 != null ? imageView2.getLayoutParams() : null;
        if (tTNativeAd.getImageList() != null && !tTNativeAd.getImageList().isEmpty() && (tTImage = tTNativeAd.getImageList().get(0)) != null && tTImage.isValid()) {
            if (imageView != null) {
                e.c().a(tTImage.getImageUrl(), imageView);
            }
            int width = tTImage.getWidth();
            int height = tTImage.getHeight();
            if (f3 >= 4.0f) {
                TextView textView3 = (TextView) inflate.findViewById(R.id.tt_pangle_ad_logo);
                if (textView3 != null) {
                    ViewGroup.LayoutParams layoutParams6 = textView3.getLayoutParams();
                    layoutParams6.width = ag.c(context, 16.0f);
                    layoutParams6.height = ag.c(context, 6.0f);
                    textView3.setLayoutParams(layoutParams6);
                    textView3.setPadding(2, 0, 0, 0);
                    textView3.setTextSize(4.0f);
                    Drawable a2 = b.a(context, R.drawable.tt_ad_logo);
                    if (a2 != null) {
                        a2.setBounds(0, 0, ag.c(context, 6.0f), ag.c(context, 5.0f));
                        textView3.setCompoundDrawables(a2, null, null, null);
                    }
                }
                int i = (int) ((width * f2) / height);
                if (f > ag.c(context)) {
                    f = ag.c(context);
                }
                if (layoutParams != null) {
                    layoutParams.height = (int) f2;
                    layoutParams.width = i;
                    viewGroup.setLayoutParams(layoutParams);
                }
                int i2 = (int) (f - i);
                if (layoutParams3 != null) {
                    layoutParams3.height = (int) f2;
                    layoutParams3.width = i2;
                    viewGroup2.setLayoutParams(layoutParams3);
                }
                float f4 = f / f2;
                if (f4 >= 6.6666665f || f4 >= 6.0f) {
                    float f5 = f2 / 90.0f;
                    if (textView != null) {
                        textView.setTextSize(1, f5 * 8.0f);
                    }
                    if (textView2 != null) {
                        textView2.setTextSize(1, f5 * 6.0f);
                        if (textView2.getLayoutParams() != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                            marginLayoutParams.topMargin = ag.c(context, 2.0f);
                            textView2.setLayoutParams(marginLayoutParams);
                        }
                    }
                } else if (f4 >= 4.0f) {
                    float f6 = f2 / 150.0f;
                    if (textView != null) {
                        textView.setTextSize(1, f6 * 10.0f);
                    }
                    if (textView2 != null) {
                        textView2.setTextSize(1, f6 * 9.0f);
                    }
                }
            } else {
                float f7 = f2 - (textView2 != null ? textView2.getLayoutParams().height : 0);
                int c2 = (int) (f7 - ag.c(context, 10.0f));
                int i3 = (width * c2) / height;
                int i4 = (int) (f / 3.0f);
                float f8 = f - i3;
                int i5 = i4;
                if (f8 > i4) {
                    i5 = (int) f8;
                }
                if (!(layoutParams2 == null || imageView == null)) {
                    layoutParams2.height = c2;
                    layoutParams2.width = (int) ((f - i5) - ag.c(context, 12.0f));
                    imageView.setLayoutParams(layoutParams2);
                }
                if (layoutParams != null) {
                    layoutParams.height = c2;
                    layoutParams.width = (int) (f - i5);
                    viewGroup.setLayoutParams(layoutParams);
                }
                if (layoutParams3 != null) {
                    layoutParams3.height = (int) f2;
                    layoutParams3.width = i5;
                    viewGroup2.setLayoutParams(layoutParams3);
                }
                if (f3 <= 1.2f) {
                    float f9 = f2 / 500.0f;
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams5;
                        marginLayoutParams2.topMargin = (int) (ag.c(context, 5.0f) * f9);
                        imageView2.setLayoutParams(marginLayoutParams2);
                    }
                    if (!(layoutParams2 == null || imageView == null)) {
                        layoutParams2.height = (int) (f7 - ag.c(context, 43.0f));
                        imageView.setLayoutParams(layoutParams2);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (layoutParams2 != null) {
                            marginLayoutParams3.height = layoutParams2.height;
                        }
                        viewGroup.setLayoutParams(marginLayoutParams3);
                    }
                    if (layoutParams3 != null) {
                        if (layoutParams2 != null) {
                            layoutParams3.height = layoutParams2.height;
                        }
                        viewGroup2.setLayoutParams(layoutParams3);
                    }
                    if (textView2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                        marginLayoutParams4.topMargin = (int) (ag.c(context, 30.0f) * f9);
                        textView2.setLayoutParams(marginLayoutParams4);
                    }
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) layoutParams4;
                        marginLayoutParams5.leftMargin = (int) (ag.c(context, 10.0f) * f9);
                        marginLayoutParams5.rightMargin = (int) (f9 * ag.c(context, 10.0f));
                        button.setLayoutParams(marginLayoutParams5);
                    }
                } else if (f3 <= 1.6f) {
                    float f10 = f2 / 400.0f;
                    if (textView != null) {
                        textView.setTextSize(1, f10 * 10.0f);
                    }
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) layoutParams5;
                        marginLayoutParams6.topMargin = (int) (ag.c(context, 5.0f) * f10);
                        imageView2.setLayoutParams(marginLayoutParams6);
                    }
                    if (textView2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams7 = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                        marginLayoutParams7.topMargin = (int) (ag.c(context, 10.0f) * f10);
                        textView2.setLayoutParams(marginLayoutParams7);
                    }
                    if (!(layoutParams2 == null || imageView == null)) {
                        layoutParams2.height = (int) (f7 - ag.c(context, 25.0f));
                        imageView.setLayoutParams(layoutParams2);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams8 = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (layoutParams2 != null) {
                            marginLayoutParams8.height = layoutParams2.height;
                        }
                        marginLayoutParams8.topMargin = (int) (ag.c(context, 5.0f) * f10);
                        viewGroup.setLayoutParams(marginLayoutParams8);
                    }
                    if (layoutParams3 != null) {
                        if (layoutParams2 != null) {
                            layoutParams3.height = layoutParams2.height;
                        }
                        viewGroup2.setLayoutParams(layoutParams3);
                    }
                    button = button;
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams9 = (ViewGroup.MarginLayoutParams) layoutParams4;
                        marginLayoutParams9.leftMargin = (int) (ag.c(context, 10.0f) * f10);
                        marginLayoutParams9.rightMargin = (int) (ag.c(context, 10.0f) * f10);
                        marginLayoutParams9.height = (int) (ag.c(context, 20.0f) * f10);
                        button.setLayoutParams(marginLayoutParams9);
                        button.setTextSize(1, f10 * 9.0f);
                        button = button;
                    }
                } else if (f3 <= 1.7783505f) {
                    float f11 = f2 / 388.0f;
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams10 = (ViewGroup.MarginLayoutParams) layoutParams5;
                        marginLayoutParams10.topMargin = (int) (ag.c(context, 6.0f) * f11);
                        imageView2.setLayoutParams(marginLayoutParams10);
                    }
                    if (textView != null) {
                        textView.setTextSize(1, f11 * 10.0f);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams11 = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams11.rightMargin = 0;
                        marginLayoutParams11.topMargin = (int) (ag.c(context, 8.0f) * f11);
                        viewGroup.setLayoutParams(marginLayoutParams11);
                    }
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams12 = (ViewGroup.MarginLayoutParams) layoutParams4;
                        marginLayoutParams12.leftMargin = (int) (ag.c(context, 8.0f) * f11);
                        marginLayoutParams12.rightMargin = (int) (ag.c(context, 8.0f) * f11);
                        marginLayoutParams12.bottomMargin = (int) (ag.c(context, 10.0f) * f11);
                        button.setLayoutParams(marginLayoutParams12);
                        button.setTextSize(1, f11 * 8.0f);
                    }
                    button = button;
                    if (viewGroup2 != null) {
                        viewGroup2.setPadding(0, viewGroup2.getTop(), (int) (f11 * ag.c(context, 10.0f)), viewGroup2.getBottom());
                        button = button;
                    }
                } else if (f3 <= 2.0f) {
                    float f12 = f2 / 300.0f;
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams13 = (ViewGroup.MarginLayoutParams) layoutParams5;
                        marginLayoutParams13.width = (int) (ag.c(context, 35.0f) * f12);
                        marginLayoutParams13.height = (int) (ag.c(context, 35.0f) * f12);
                        imageView2.setLayoutParams(marginLayoutParams13);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams14 = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams14.topMargin = (int) (ag.c(context, 5.0f) * f12);
                        viewGroup.setLayoutParams(marginLayoutParams14);
                    }
                    if (textView != null) {
                        textView.setTextSize(1, f12 * 8.0f);
                    }
                    button = button;
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams15 = (ViewGroup.MarginLayoutParams) layoutParams4;
                        marginLayoutParams15.bottomMargin = (int) (ag.c(context, 12.0f) * f12);
                        marginLayoutParams15.leftMargin = (int) (ag.c(context, 6.0f) * f12);
                        marginLayoutParams15.rightMargin = (int) (ag.c(context, 6.0f) * f12);
                        marginLayoutParams15.height = (int) (ag.c(context, 20.0f) * f12);
                        button.setLayoutParams(marginLayoutParams15);
                        button.setTextSize(1, f12 * 8.0f);
                        button = button;
                    }
                } else if (f3 <= 2.3076923f) {
                    float f13 = f2 / 260.0f;
                    if (textView != null) {
                        textView.setTextSize(1, f13 * 8.0f);
                    }
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams16 = (ViewGroup.MarginLayoutParams) layoutParams5;
                        marginLayoutParams16.width = (int) (ag.c(context, 30.0f) * f13);
                        marginLayoutParams16.height = (int) (ag.c(context, 30.0f) * f13);
                        imageView2.setLayoutParams(marginLayoutParams16);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams17 = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams17.topMargin = (int) (ag.c(context, 8.0f) * f13);
                        viewGroup.setLayoutParams(marginLayoutParams17);
                    }
                    button = button;
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams18 = (ViewGroup.MarginLayoutParams) layoutParams4;
                        marginLayoutParams18.bottomMargin = (int) (ag.c(context, 8.0f) * f13);
                        marginLayoutParams18.leftMargin = (int) (ag.c(context, 6.0f) * f13);
                        marginLayoutParams18.rightMargin = (int) (ag.c(context, 6.0f) * f13);
                        marginLayoutParams18.height = (int) (ag.c(context, 20.0f) * f13);
                        button.setLayoutParams(marginLayoutParams18);
                        button.setTextSize(1, f13 * 6.0f);
                        button = button;
                    }
                } else {
                    button = button;
                    if (f3 <= 3.0f) {
                        float f14 = f2 / 200.0f;
                        if (layoutParams5 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams19 = (ViewGroup.MarginLayoutParams) layoutParams5;
                            marginLayoutParams19.topMargin = ag.c(context, 10.0f);
                            imageView2.setLayoutParams(marginLayoutParams19);
                        }
                        button = button;
                        if (layoutParams4 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams20 = (ViewGroup.MarginLayoutParams) layoutParams4;
                            marginLayoutParams20.bottomMargin = (int) (f14 * ag.c(context, 10.0f));
                            button.setLayoutParams(marginLayoutParams20);
                            button = button;
                        }
                    }
                }
            }
        }
        TTImage icon = tTNativeAd.getIcon();
        if (!(icon == null || !icon.isValid() || imageView2 == null)) {
            e.c().a(icon.getImageUrl(), imageView2);
        }
        if (button != null) {
            button.setText(tTNativeAd.getButtonText());
        }
        List<View> arrayList = new ArrayList<>();
        arrayList.add(inflate);
        List<View> arrayList2 = new ArrayList<>();
        if (button != null) {
            arrayList2.add(button);
        }
        tTNativeAd.registerViewForInteraction((ViewGroup) inflate, arrayList, arrayList2, adInteractionListener);
        return inflate;
    }
}
