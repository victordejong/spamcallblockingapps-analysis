package com.firstorion.libcyd;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TemplateParser.class */
public final class TemplateParser {
    private static final String TAG_TEMPLATE_PARSER = "TemplateParser";

    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TemplateParser$LottieAnimationStarter.class */
    private static class LottieAnimationStarter implements Animation.AnimationListener {
        private final LottieAnimationView animationView;

        public LottieAnimationStarter(LottieAnimationView lottieAnimationView) {
            if (lottieAnimationView == null) {
                throw new NullPointerException("animationView");
            }
            this.animationView = lottieAnimationView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.animationView.playAnimation();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TemplateParser$TemplateParseResult.class */
    public static class TemplateParseResult {
        public final int height;
        public final View view;
        public final int width;

        public TemplateParseResult(View view, int i, int i2) {
            this.view = view;
            this.width = i;
            this.height = i2;
        }
    }

    private TemplateParser() {
    }

    private static void applyAnimation(LottieAnimationView lottieAnimationView) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TemplateParseResult create(JSONObject jSONObject, Context context, DisplayMetrics displayMetrics, Map<String, String> map, Map<String, String> map2, boolean z) throws Exception {
        LottieAnimationView lottieAnimationView;
        ContentRoot pickContentRoot = pickContentRoot(jSONObject, z);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        if (i2 <= i) {
            i = i2;
            i2 = i;
        }
        float f = ((float) pickContentRoot.weightY) / 100.0f;
        float f2 = i2;
        float f3 = f * f2;
        float f4 = i;
        float f5 = f4 / 100.0f;
        float f6 = f3 / 100.0f;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int i3 = (int) f4;
        relativeLayout.setMinimumWidth(i3);
        int i4 = (int) f3;
        relativeLayout.setMinimumHeight(i4);
        relativeLayout.setPadding(0, 0, 0, 0);
        int length = pickContentRoot.content.length;
        for (int i5 = 0; i5 < length; i5++) {
            PositionedElement positionedElement = pickContentRoot.content[i5];
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(positionedElement.weightX * f5), Math.round(positionedElement.weightY * f6));
            layoutParams.leftMargin = Math.round(positionedElement.f127x * f5);
            layoutParams.topMargin = Math.round(positionedElement.f128y * f6);
            if (positionedElement instanceof CydTextElement) {
                CydTextElement cydTextElement = (CydTextElement) positionedElement;
                lottieAnimationView = new TextView(context);
                layoutParams.height = (i2 / 2) - layoutParams.topMargin;
                lottieAnimationView.setText(replaceWithData(cydTextElement.text, map, map2));
                lottieAnimationView.setTextColor(cydTextElement.fontColor);
                lottieAnimationView.setBackgroundColor(0);
                lottieAnimationView.setGravity(toGravity(cydTextElement.justify) | 48);
                lottieAnimationView.setTextSize(1, toTextSize(cydTextElement.fontSize));
            } else if (positionedElement instanceof CydImageElement) {
                lottieAnimationView = new ImageView(context);
                lottieAnimationView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                lottieAnimationView.setImageDrawable(Drawable.createFromStream(new ByteArrayInputStream(Base64.decode(((CydImageElement) positionedElement).imageData.getBytes(), 0)), "imageData"));
            } else if (positionedElement instanceof CydAnimation) {
                CydAnimation cydAnimation = (CydAnimation) positionedElement;
                lottieAnimationView = new LottieAnimationView(context);
                lottieAnimationView.setBackgroundColor(cydAnimation.backgroundColor);
                lottieAnimationView.setAnimation(cydAnimation.animationData);
                lottieAnimationView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                lottieAnimationView.loop(true);
                applyAnimation(lottieAnimationView);
            } else {
                Log.w(TAG_TEMPLATE_PARSER, "Unknown object type: " + positionedElement.getClass().getName());
            }
            lottieAnimationView.setPadding(0, 0, 0, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                lottieAnimationView.setZ(positionedElement.f129z);
            }
            relativeLayout.addView((View) lottieAnimationView, (ViewGroup.LayoutParams) layoutParams);
        }
        ImageView imageView = new ImageView(context);
        imageView.setTag(MessageCenterInteraction.EVENT_NAME_CLOSE);
        InputStream openRawResource = context.getResources().openRawResource(C1170R.C1175raw.cydclear);
        imageView.setImageDrawable(Drawable.createFromStream(openRawResource, "clear"));
        openRawResource.close();
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(Math.round(f5 * 10.0f), Math.round(((f2 / 2.0f) / 100.0f) * 10.0f));
        layoutParams2.leftMargin = Math.round(f5 * 90.0f);
        layoutParams2.topMargin = 0;
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setZ(1000000.0f);
        }
        relativeLayout.addView(imageView, layoutParams2);
        return new TemplateParseResult(relativeLayout, i3, i4);
    }

    private static String getVariable(String str, int i, char c, int i2) {
        for (int i3 = i2; i3 < i; i3++) {
            if (str.charAt(i3) == '}') {
                int i4 = i3 + 1;
                if (i4 >= i) {
                    return null;
                }
                if (str.charAt(i4) == c) {
                    return str.substring(i2, i3);
                }
            }
        }
        return null;
    }

    private static ContentRoot pickContentRoot(JSONObject jSONObject, boolean z) throws JSONException, BadContentException {
        String optString = jSONObject.optString(Apptentive.Version.TYPE, null);
        if (optString == null) {
            return new ContentRoot(jSONObject);
        }
        if ("0.1".equals(optString)) {
            ContentRootsContainer contentRootsContainer = new ContentRootsContainer(jSONObject);
            if (z) {
                for (int i = 0; i < contentRootsContainer.contentRoots.length; i++) {
                    if (contentRootsContainer.contentRoots[i].lockScreen) {
                        return contentRootsContainer.contentRoots[i];
                    }
                }
                return contentRootsContainer.contentRoots[0];
            }
            for (int i2 = 0; i2 < contentRootsContainer.contentRoots.length; i2++) {
                if (!contentRootsContainer.contentRoots[i2].lockScreen) {
                    return contentRootsContainer.contentRoots[i2];
                }
            }
            throw new BadContentException("Unable to find something to display on an unlocked screen.");
        }
        throw new BadContentException("Content version not supported: " + optString);
    }

    private static String replaceWithData(String str, Map<String, String> map, Map<String, String> map2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char charAt = str.charAt(i);
            if (charAt == '$') {
                int i2 = i + 1;
                if (i2 >= length) {
                    sb.append('$');
                } else if (str.charAt(i2) == '{') {
                    String variable = getVariable(str, length, '$', i + 2);
                    if (variable == null) {
                        sb.append(str.substring(i, length));
                        break;
                    }
                    int length2 = i + variable.length() + 3;
                    String trim = variable.trim();
                    i = length2;
                    if (map2.containsKey(trim)) {
                        sb.append(map2.get(trim));
                        i = length2;
                    }
                } else {
                    sb.append('$');
                }
                i++;
            } else {
                if (charAt == '#') {
                    int i3 = i + 1;
                    if (i3 >= length) {
                        sb.append('#');
                    } else if (str.charAt(i3) == '{') {
                        String variable2 = getVariable(str, length, '#', i + 2);
                        if (variable2 == null) {
                            sb.append(str.substring(i, length));
                            break;
                        }
                        int length3 = i + variable2.length() + 3;
                        String trim2 = variable2.trim();
                        i = length3;
                        if (map.containsKey(trim2)) {
                            sb.append(map.get(trim2));
                            i = length3;
                        }
                    } else {
                        sb.append('#');
                    }
                } else {
                    sb.append(charAt);
                }
                i++;
            }
        }
        return sb.toString();
    }

    private static int toGravity(Justify justify) {
        if (justify == Justify.Left) {
            return 3;
        }
        if (justify == Justify.Right) {
            return 5;
        }
        if (justify == Justify.Center) {
            return 17;
        }
        throw new IllegalArgumentException("Unknown justify: " + justify);
    }

    private static float toTextSize(FontSize fontSize) {
        if (fontSize == FontSize.XSmall) {
            return 12.0f;
        }
        if (fontSize == FontSize.Small) {
            return 18.0f;
        }
        if (fontSize == FontSize.Medium) {
            return 24.0f;
        }
        if (fontSize == FontSize.Large) {
            return 30.0f;
        }
        if (fontSize == FontSize.XLarge) {
            return 36.0f;
        }
        throw new IllegalArgumentException("Unknown font size: " + fontSize);
    }
}
