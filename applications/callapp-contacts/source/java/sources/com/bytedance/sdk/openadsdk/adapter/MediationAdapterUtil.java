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
import androidx.core.content.C0790b;
import com.bytedance.sdk.openadsdk.C4258R;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/MediationAdapterUtil.class */
public class MediationAdapterUtil {
    public static void addNativeFeedMainView(Context context, int i, MediaView mediaView, View view, List<TTImage> list) {
        TTImage tTImage;
        if (context == null || mediaView == null) {
            return;
        }
        if (i != 3 && i != 2 && i != 16 && i != 4 && i != 33) {
            if ((i != 5 && i != 15 && i != 50) || view == null || view.getParent() != null) {
                return;
            }
            mediaView.removeAllViews();
            mediaView.addView(view, -1, -1);
            return;
        }
        View inflate = LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_pangle_native_image_video_layout"), (ViewGroup) null);
        if (inflate == null) {
            return;
        }
        ImageView imageView = (ImageView) inflate.findViewById(C5486x.m32066e(context, "tt_main_image"));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C5486x.m32066e(context, "tt_layout_image_group"));
        if (i != 4) {
            imageView.setVisibility(0);
            linearLayout.setVisibility(8);
            if (list != null && !list.isEmpty() && (tTImage = list.get(0)) != null && tTImage.isValid()) {
                C4959e.m33434c().m33439a(tTImage.getImageUrl(), imageView);
            }
        } else if (list != null && list.size() >= 3) {
            ImageView imageView2 = (ImageView) inflate.findViewById(C5486x.m32066e(context, "tt_group_image1"));
            ImageView imageView3 = (ImageView) inflate.findViewById(C5486x.m32066e(context, "tt_group_image2"));
            ImageView imageView4 = (ImageView) inflate.findViewById(C5486x.m32066e(context, "tt_group_image3"));
            imageView.setVisibility(8);
            linearLayout.setVisibility(0);
            TTImage tTImage2 = list.get(0);
            TTImage tTImage3 = list.get(1);
            TTImage tTImage4 = list.get(2);
            if (tTImage2 != null && tTImage2.isValid() && imageView2 != null) {
                C4959e.m33434c().m33439a(tTImage2.getImageUrl(), imageView2);
            }
            if (tTImage3 != null && tTImage3.isValid() && imageView3 != null) {
                C4959e.m33434c().m33439a(tTImage4.getImageUrl(), imageView3);
            }
            if (tTImage4 != null && tTImage4.isValid() && imageView4 != null) {
                C4959e.m33434c().m33439a(tTImage4.getImageUrl(), imageView3);
            }
        }
        mediaView.removeAllViews();
        mediaView.addView(inflate, -1, -1);
    }

    public static View setAdDataAndBuildBannerView(Context context, TTNativeAd tTNativeAd, TTNativeAd.AdInteractionListener adInteractionListener, float f, float f2) {
        TTImage tTImage;
        if (context == null || tTNativeAd == null || adInteractionListener == null) {
            return null;
        }
        float f3 = f / f2;
        ViewGroup inflate = f3 < 4.0f ? LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_pangle_ad_banner_layout_600_300"), (ViewGroup) null, false) : LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_pangle_ad_banner_layout_600_150"), (ViewGroup) null, false);
        TextView textView = (TextView) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_title);
        if (textView != null) {
            textView.setText(tTNativeAd.getTitle());
        }
        TextView textView2 = (TextView) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_content);
        if (textView2 != null) {
            textView2.setText(tTNativeAd.getDescription());
        }
        Button button = (Button) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_btn);
        ViewGroup viewGroup = (ViewGroup) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_image_layout);
        ImageView imageView = (ImageView) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_main_img);
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_content_layout);
        ImageView imageView2 = (ImageView) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_icon_adapter);
        ViewGroup.MarginLayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams2 = imageView != null ? imageView.getLayoutParams() : null;
        ViewGroup.LayoutParams layoutParams3 = viewGroup2 != null ? viewGroup2.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams layoutParams4 = button != null ? button.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams layoutParams5 = imageView2 != null ? imageView2.getLayoutParams() : null;
        if (tTNativeAd.getImageList() != null && !tTNativeAd.getImageList().isEmpty() && (tTImage = tTNativeAd.getImageList().get(0)) != null && tTImage.isValid()) {
            if (imageView != null) {
                C4959e.m33434c().m33439a(tTImage.getImageUrl(), imageView);
            }
            int width = tTImage.getWidth();
            int height = tTImage.getHeight();
            if (f3 >= 4.0f) {
                TextView textView3 = (TextView) inflate.findViewById(C4258R.C4260id.tt_pangle_ad_logo);
                if (textView3 != null) {
                    ViewGroup.LayoutParams layoutParams6 = textView3.getLayoutParams();
                    layoutParams6.width = C5443ag.m32217c(context, 16.0f);
                    layoutParams6.height = C5443ag.m32217c(context, 6.0f);
                    textView3.setLayoutParams(layoutParams6);
                    textView3.setPadding(2, 0, 0, 0);
                    textView3.setTextSize(4.0f);
                    Drawable m44502a = C0790b.m44502a(context, C4258R.C4259drawable.tt_ad_logo);
                    if (m44502a != null) {
                        m44502a.setBounds(0, 0, C5443ag.m32217c(context, 6.0f), C5443ag.m32217c(context, 5.0f));
                        textView3.setCompoundDrawables(m44502a, null, null, null);
                    }
                }
                int i = (int) ((width * f2) / height);
                if (f > C5443ag.m32218c(context)) {
                    f = C5443ag.m32218c(context);
                }
                if (layoutParams != null) {
                    ((ViewGroup.LayoutParams) layoutParams).height = (int) f2;
                    ((ViewGroup.LayoutParams) layoutParams).width = i;
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
                            marginLayoutParams.topMargin = C5443ag.m32217c(context, 2.0f);
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
                int m32217c = (int) (f7 - C5443ag.m32217c(context, 10.0f));
                int i3 = (width * m32217c) / height;
                int i4 = (int) (f / 3.0f);
                float f8 = f - i3;
                int i5 = i4;
                if (f8 > i4) {
                    i5 = (int) f8;
                }
                if (layoutParams2 != null && imageView != null) {
                    layoutParams2.height = m32217c;
                    layoutParams2.width = (int) ((f - i5) - C5443ag.m32217c(context, 12.0f));
                    imageView.setLayoutParams(layoutParams2);
                }
                if (layoutParams != null) {
                    ((ViewGroup.LayoutParams) layoutParams).height = m32217c;
                    ((ViewGroup.LayoutParams) layoutParams).width = (int) (f - i5);
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
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams5;
                        marginLayoutParams2.topMargin = (int) (C5443ag.m32217c(context, 5.0f) * f9);
                        imageView2.setLayoutParams(marginLayoutParams2);
                    }
                    if (layoutParams2 != null && imageView != null) {
                        layoutParams2.height = (int) (f7 - C5443ag.m32217c(context, 43.0f));
                        imageView.setLayoutParams(layoutParams2);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams;
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
                        marginLayoutParams4.topMargin = (int) (C5443ag.m32217c(context, 30.0f) * f9);
                        textView2.setLayoutParams(marginLayoutParams4);
                    }
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams4;
                        marginLayoutParams5.leftMargin = (int) (C5443ag.m32217c(context, 10.0f) * f9);
                        marginLayoutParams5.rightMargin = (int) (f9 * C5443ag.m32217c(context, 10.0f));
                        button.setLayoutParams(marginLayoutParams5);
                    }
                } else if (f3 <= 1.6f) {
                    float f10 = f2 / 400.0f;
                    if (textView != null) {
                        textView.setTextSize(1, f10 * 10.0f);
                    }
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams6 = layoutParams5;
                        marginLayoutParams6.topMargin = (int) (C5443ag.m32217c(context, 5.0f) * f10);
                        imageView2.setLayoutParams(marginLayoutParams6);
                    }
                    if (textView2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams7 = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                        marginLayoutParams7.topMargin = (int) (C5443ag.m32217c(context, 10.0f) * f10);
                        textView2.setLayoutParams(marginLayoutParams7);
                    }
                    if (layoutParams2 != null && imageView != null) {
                        layoutParams2.height = (int) (f7 - C5443ag.m32217c(context, 25.0f));
                        imageView.setLayoutParams(layoutParams2);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams8 = layoutParams;
                        if (layoutParams2 != null) {
                            marginLayoutParams8.height = layoutParams2.height;
                        }
                        marginLayoutParams8.topMargin = (int) (C5443ag.m32217c(context, 5.0f) * f10);
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
                        ViewGroup.MarginLayoutParams marginLayoutParams9 = layoutParams4;
                        marginLayoutParams9.leftMargin = (int) (C5443ag.m32217c(context, 10.0f) * f10);
                        marginLayoutParams9.rightMargin = (int) (C5443ag.m32217c(context, 10.0f) * f10);
                        marginLayoutParams9.height = (int) (C5443ag.m32217c(context, 20.0f) * f10);
                        button.setLayoutParams(marginLayoutParams9);
                        button.setTextSize(1, f10 * 9.0f);
                        button = button;
                    }
                } else if (f3 <= 1.7783505f) {
                    float f11 = f2 / 388.0f;
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams10 = layoutParams5;
                        marginLayoutParams10.topMargin = (int) (C5443ag.m32217c(context, 6.0f) * f11);
                        imageView2.setLayoutParams(marginLayoutParams10);
                    }
                    if (textView != null) {
                        textView.setTextSize(1, f11 * 10.0f);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams11 = layoutParams;
                        marginLayoutParams11.rightMargin = 0;
                        marginLayoutParams11.topMargin = (int) (C5443ag.m32217c(context, 8.0f) * f11);
                        viewGroup.setLayoutParams(marginLayoutParams11);
                    }
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams12 = layoutParams4;
                        marginLayoutParams12.leftMargin = (int) (C5443ag.m32217c(context, 8.0f) * f11);
                        marginLayoutParams12.rightMargin = (int) (C5443ag.m32217c(context, 8.0f) * f11);
                        marginLayoutParams12.bottomMargin = (int) (C5443ag.m32217c(context, 10.0f) * f11);
                        button.setLayoutParams(marginLayoutParams12);
                        button.setTextSize(1, f11 * 8.0f);
                    }
                    button = button;
                    if (viewGroup2 != null) {
                        viewGroup2.setPadding(0, viewGroup2.getTop(), (int) (f11 * C5443ag.m32217c(context, 10.0f)), viewGroup2.getBottom());
                        button = button;
                    }
                } else if (f3 <= 2.0f) {
                    float f12 = f2 / 300.0f;
                    if (layoutParams5 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams13 = layoutParams5;
                        marginLayoutParams13.width = (int) (C5443ag.m32217c(context, 35.0f) * f12);
                        marginLayoutParams13.height = (int) (C5443ag.m32217c(context, 35.0f) * f12);
                        imageView2.setLayoutParams(marginLayoutParams13);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams14 = layoutParams;
                        marginLayoutParams14.topMargin = (int) (C5443ag.m32217c(context, 5.0f) * f12);
                        viewGroup.setLayoutParams(marginLayoutParams14);
                    }
                    if (textView != null) {
                        textView.setTextSize(1, f12 * 8.0f);
                    }
                    button = button;
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams15 = layoutParams4;
                        marginLayoutParams15.bottomMargin = (int) (C5443ag.m32217c(context, 12.0f) * f12);
                        marginLayoutParams15.leftMargin = (int) (C5443ag.m32217c(context, 6.0f) * f12);
                        marginLayoutParams15.rightMargin = (int) (C5443ag.m32217c(context, 6.0f) * f12);
                        marginLayoutParams15.height = (int) (C5443ag.m32217c(context, 20.0f) * f12);
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
                        ViewGroup.MarginLayoutParams marginLayoutParams16 = layoutParams5;
                        marginLayoutParams16.width = (int) (C5443ag.m32217c(context, 30.0f) * f13);
                        marginLayoutParams16.height = (int) (C5443ag.m32217c(context, 30.0f) * f13);
                        imageView2.setLayoutParams(marginLayoutParams16);
                    }
                    if (layoutParams != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams17 = layoutParams;
                        marginLayoutParams17.topMargin = (int) (C5443ag.m32217c(context, 8.0f) * f13);
                        viewGroup.setLayoutParams(marginLayoutParams17);
                    }
                    button = button;
                    if (layoutParams4 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams18 = layoutParams4;
                        marginLayoutParams18.bottomMargin = (int) (C5443ag.m32217c(context, 8.0f) * f13);
                        marginLayoutParams18.leftMargin = (int) (C5443ag.m32217c(context, 6.0f) * f13);
                        marginLayoutParams18.rightMargin = (int) (C5443ag.m32217c(context, 6.0f) * f13);
                        marginLayoutParams18.height = (int) (C5443ag.m32217c(context, 20.0f) * f13);
                        button.setLayoutParams(marginLayoutParams18);
                        button.setTextSize(1, f13 * 6.0f);
                        button = button;
                    }
                } else {
                    button = button;
                    if (f3 <= 3.0f) {
                        float f14 = f2 / 200.0f;
                        if (layoutParams5 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams19 = layoutParams5;
                            marginLayoutParams19.topMargin = C5443ag.m32217c(context, 10.0f);
                            imageView2.setLayoutParams(marginLayoutParams19);
                        }
                        button = button;
                        if (layoutParams4 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams20 = layoutParams4;
                            marginLayoutParams20.bottomMargin = (int) (f14 * C5443ag.m32217c(context, 10.0f));
                            button.setLayoutParams(marginLayoutParams20);
                            button = button;
                        }
                    }
                }
            }
        }
        TTImage icon = tTNativeAd.getIcon();
        if (icon != null && icon.isValid() && imageView2 != null) {
            C4959e.m33434c().m33439a(icon.getImageUrl(), imageView2);
        }
        if (button != null) {
            button.setText(tTNativeAd.getButtonText());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(inflate);
        ArrayList arrayList2 = new ArrayList();
        if (button != null) {
            arrayList2.add(button);
        }
        tTNativeAd.registerViewForInteraction(inflate, arrayList, arrayList2, adInteractionListener);
        return inflate;
    }
}
