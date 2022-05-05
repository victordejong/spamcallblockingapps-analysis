package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/LayerParser.class */
public class LayerParser {

    /* renamed from: a */
    private static final JsonReader.Options f6312a = JsonReader.Options.m15804a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* renamed from: b */
    private static final JsonReader.Options f6313b = JsonReader.Options.m15804a("d", "a");

    /* renamed from: c */
    private static final JsonReader.Options f6314c = JsonReader.Options.m15804a("nm");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.parser.LayerParser$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/LayerParser$1.class */
    public static /* synthetic */ class C06671 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6315a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f6315a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6315a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private LayerParser() {
    }

    /* renamed from: a */
    public static Layer m15834a(LottieComposition lottieComposition) {
        Rect b = lottieComposition.m16345b();
        return new Layer(Collections.emptyList(), lottieComposition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, b.width(), b.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false);
    }

    /* renamed from: b */
    public static Layer m15833b(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        Layer.MatteType matteType = Layer.MatteType.NONE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.mo15792d();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        AnimatableTransform animatableTransform = null;
        AnimatableFloatValue animatableFloatValue = null;
        long j = -1;
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        float f3 = 1.0f;
        float f4 = 0.0f;
        int i4 = 0;
        int i5 = 0;
        boolean z = false;
        long j2 = 0;
        String str = null;
        String str2 = "UNSET";
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableTextFrame animatableTextFrame = null;
        String str3 = null;
        Layer.LayerType layerType = null;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6312a)) {
                case 0:
                    str2 = jsonReader.mo15779q();
                    break;
                case 1:
                    j2 = jsonReader.mo15782o();
                    break;
                case 2:
                    str3 = jsonReader.mo15779q();
                    break;
                case 3:
                    int o = jsonReader.mo15782o();
                    if (o >= Layer.LayerType.UNKNOWN.ordinal()) {
                        layerType = Layer.LayerType.UNKNOWN;
                        break;
                    } else {
                        layerType = Layer.LayerType.values()[o];
                        break;
                    }
                case 4:
                    j = jsonReader.mo15782o();
                    break;
                case 5:
                    i = (int) (jsonReader.mo15782o() * Utils.m15693e());
                    break;
                case 6:
                    i2 = (int) (jsonReader.mo15782o() * Utils.m15693e());
                    break;
                case 7:
                    i3 = Color.parseColor(jsonReader.mo15779q());
                    break;
                case 8:
                    animatableTransform = AnimatableTransformParser.m15874g(jsonReader, lottieComposition);
                    break;
                case 9:
                    int o2 = jsonReader.mo15782o();
                    if (o2 < Layer.MatteType.values().length) {
                        matteType = Layer.MatteType.values()[o2];
                        int i6 = C06671.f6315a[matteType.ordinal()];
                        if (i6 == 1) {
                            lottieComposition.m16346a("Unsupported matte type: Luma");
                        } else if (i6 == 2) {
                            lottieComposition.m16346a("Unsupported matte type: Luma Inverted");
                        }
                        lottieComposition.m16330q(1);
                        break;
                    } else {
                        lottieComposition.m16346a("Unsupported matte type: " + o2);
                        break;
                    }
                case 10:
                    jsonReader.mo15794b();
                    while (jsonReader.mo15785k()) {
                        arrayList.add(MaskParser.m15826a(jsonReader, lottieComposition));
                    }
                    lottieComposition.m16330q(arrayList.size());
                    jsonReader.mo15790e();
                    break;
                case 11:
                    jsonReader.mo15794b();
                    while (jsonReader.mo15785k()) {
                        ContentModel a = ContentModelParser.m15860a(jsonReader, lottieComposition);
                        if (a != null) {
                            arrayList2.add(a);
                        }
                    }
                    jsonReader.mo15790e();
                    break;
                case 12:
                    jsonReader.mo15792d();
                    while (jsonReader.mo15785k()) {
                        int J = jsonReader.mo15801J(f6313b);
                        if (J == 0) {
                            animatableTextFrame = AnimatableValueParser.m15870d(jsonReader, lottieComposition);
                        } else if (J != 1) {
                            jsonReader.mo15800K();
                            jsonReader.mo15799L();
                        } else {
                            jsonReader.mo15794b();
                            if (jsonReader.mo15785k()) {
                                animatableTextProperties = AnimatableTextPropertiesParser.m15882a(jsonReader, lottieComposition);
                            }
                            while (jsonReader.mo15785k()) {
                                jsonReader.mo15799L();
                            }
                            jsonReader.mo15790e();
                        }
                    }
                    jsonReader.mo15788h();
                    break;
                case 13:
                    jsonReader.mo15794b();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.mo15785k()) {
                        jsonReader.mo15792d();
                        while (jsonReader.mo15785k()) {
                            if (jsonReader.mo15801J(f6314c) != 0) {
                                jsonReader.mo15800K();
                                jsonReader.mo15799L();
                            } else {
                                arrayList3.add(jsonReader.mo15779q());
                            }
                        }
                        jsonReader.mo15788h();
                    }
                    jsonReader.mo15790e();
                    lottieComposition.m16346a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    break;
                case 14:
                    f3 = (float) jsonReader.mo15783m();
                    break;
                case 15:
                    f4 = (float) jsonReader.mo15783m();
                    break;
                case 16:
                    i4 = (int) (jsonReader.mo15782o() * Utils.m15693e());
                    break;
                case 17:
                    i5 = (int) (jsonReader.mo15782o() * Utils.m15693e());
                    break;
                case 18:
                    f = (float) jsonReader.mo15783m();
                    break;
                case 19:
                    f2 = (float) jsonReader.mo15783m();
                    break;
                case 20:
                    animatableFloatValue = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
                    break;
                case 21:
                    str = jsonReader.mo15779q();
                    break;
                case 22:
                    z = jsonReader.mo15784l();
                    break;
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    break;
            }
        }
        jsonReader.mo15788h();
        float f5 = f / f3;
        float f6 = f2 / f3;
        ArrayList arrayList4 = new ArrayList();
        if (f5 > 0.0f) {
            arrayList4.add(new Keyframe(lottieComposition, valueOf2, valueOf2, null, 0.0f, Float.valueOf(f5)));
        }
        if (f6 <= 0.0f) {
            f6 = lottieComposition.m16341f();
        }
        arrayList4.add(new Keyframe(lottieComposition, valueOf, valueOf, null, f5, Float.valueOf(f6)));
        arrayList4.add(new Keyframe(lottieComposition, valueOf2, valueOf2, null, f6, Float.valueOf(Float.MAX_VALUE)));
        if (str2.endsWith(".ai") || "ai".equals(str)) {
            lottieComposition.m16346a("Convert your Illustrator layers to shape layers.");
        }
        return new Layer(arrayList2, lottieComposition, str2, j2, layerType, j, str3, arrayList, animatableTransform, i, i2, i3, f3, f4, i4, i5, animatableTextFrame, animatableTextProperties, arrayList4, matteType, animatableFloatValue, z);
    }
}
