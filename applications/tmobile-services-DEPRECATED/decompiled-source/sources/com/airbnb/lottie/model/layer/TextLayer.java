package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/TextLayer.class */
public class TextLayer extends BaseLayer {

    /* renamed from: E */
    private final TextKeyframeAnimation f6264E;

    /* renamed from: F */
    private final LottieDrawable f6265F;

    /* renamed from: G */
    private final LottieComposition f6266G;
    @Nullable

    /* renamed from: H */
    private BaseKeyframeAnimation<Integer, Integer> f6267H;
    @Nullable

    /* renamed from: I */
    private BaseKeyframeAnimation<Integer, Integer> f6268I;
    @Nullable

    /* renamed from: J */
    private BaseKeyframeAnimation<Integer, Integer> f6269J;
    @Nullable

    /* renamed from: K */
    private BaseKeyframeAnimation<Integer, Integer> f6270K;
    @Nullable

    /* renamed from: L */
    private BaseKeyframeAnimation<Float, Float> f6271L;
    @Nullable

    /* renamed from: M */
    private BaseKeyframeAnimation<Float, Float> f6272M;
    @Nullable

    /* renamed from: N */
    private BaseKeyframeAnimation<Float, Float> f6273N;
    @Nullable

    /* renamed from: O */
    private BaseKeyframeAnimation<Float, Float> f6274O;
    @Nullable

    /* renamed from: P */
    private BaseKeyframeAnimation<Float, Float> f6275P;
    @Nullable

    /* renamed from: Q */
    private BaseKeyframeAnimation<Float, Float> f6276Q;

    /* renamed from: x */
    private final StringBuilder f6277x = new StringBuilder(2);

    /* renamed from: y */
    private final RectF f6278y = new RectF();

    /* renamed from: z */
    private final Matrix f6279z = new Matrix();

    /* renamed from: A */
    private final Paint f6260A = new Paint(this, 1) { // from class: com.airbnb.lottie.model.layer.TextLayer.1
        {
            setStyle(Paint.Style.FILL);
        }
    };

    /* renamed from: B */
    private final Paint f6261B = new Paint(this, 1) { // from class: com.airbnb.lottie.model.layer.TextLayer.2
        {
            setStyle(Paint.Style.STROKE);
        }
    };

    /* renamed from: C */
    private final Map<FontCharacter, List<ContentGroup>> f6262C = new HashMap();

    /* renamed from: D */
    private final LongSparseArray<String> f6263D = new LongSparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.model.layer.TextLayer$3 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/TextLayer$3.class */
    public static /* synthetic */ class C06653 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6280a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f6280a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6280a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6280a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        AnimatableFloatValue animatableFloatValue;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableColorValue animatableColorValue;
        AnimatableColorValue animatableColorValue2;
        this.f6265F = lottieDrawable;
        this.f6266G = layer.m15938a();
        TextKeyframeAnimation d = layer.m15922q().mo16063a();
        this.f6264E = d;
        d.m16161a(this);
        m15958i(this.f6264E);
        AnimatableTextProperties r = layer.m15921r();
        if (!(r == null || (animatableColorValue2 = r.f6092a) == null)) {
            BaseKeyframeAnimation<Integer, Integer> a = animatableColorValue2.mo16063a();
            this.f6267H = a;
            a.m16161a(this);
            m15958i(this.f6267H);
        }
        if (!(r == null || (animatableColorValue = r.f6093b) == null)) {
            BaseKeyframeAnimation<Integer, Integer> a2 = animatableColorValue.mo16063a();
            this.f6269J = a2;
            a2.m16161a(this);
            m15958i(this.f6269J);
        }
        if (!(r == null || (animatableFloatValue2 = r.f6094c) == null)) {
            BaseKeyframeAnimation<Float, Float> a3 = animatableFloatValue2.mo16063a();
            this.f6271L = a3;
            a3.m16161a(this);
            m15958i(this.f6271L);
        }
        if (r != null && (animatableFloatValue = r.f6095d) != null) {
            BaseKeyframeAnimation<Float, Float> a4 = animatableFloatValue.mo16063a();
            this.f6273N = a4;
            a4.m16161a(this);
            m15958i(this.f6273N);
        }
    }

    /* renamed from: J */
    private void m15914J(DocumentData.Justification justification, Canvas canvas, float f) {
        int i = C06653.f6280a[justification.ordinal()];
        if (i == 2) {
            canvas.translate(-f, 0.0f);
        } else if (i == 3) {
            canvas.translate((-f) / 2.0f, 0.0f);
        }
    }

    /* renamed from: K */
    private String m15913K(String str, int i) {
        int codePointAt = str.codePointAt(i);
        int charCount = Character.charCount(codePointAt) + i;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!m15901W(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j = codePointAt;
        if (this.f6263D.m21047d(j)) {
            return this.f6263D.m21045g(j);
        }
        this.f6277x.setLength(0);
        while (i < charCount) {
            int codePointAt3 = str.codePointAt(i);
            this.f6277x.appendCodePoint(codePointAt3);
            i += Character.charCount(codePointAt3);
        }
        String sb = this.f6277x.toString();
        this.f6263D.m21040n(j, sb);
        return sb;
    }

    /* renamed from: L */
    private void m15912L(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
            }
        }
    }

    /* renamed from: M */
    private void m15911M(FontCharacter fontCharacter, Matrix matrix, float f, DocumentData documentData, Canvas canvas) {
        List<ContentGroup> T = m15904T(fontCharacter);
        for (int i = 0; i < T.size(); i++) {
            Path path = T.get(i).getPath();
            path.computeBounds(this.f6278y, false);
            this.f6279z.set(matrix);
            this.f6279z.preTranslate(0.0f, (-documentData.f6065g) * Utils.m15693e());
            this.f6279z.preScale(f, f);
            path.transform(this.f6279z);
            if (documentData.f6069k) {
                m15908P(path, this.f6260A, canvas);
                m15908P(path, this.f6261B, canvas);
            } else {
                m15908P(path, this.f6261B, canvas);
                m15908P(path, this.f6260A, canvas);
            }
        }
    }

    /* renamed from: N */
    private void m15910N(String str, DocumentData documentData, Canvas canvas) {
        if (documentData.f6069k) {
            m15912L(str, this.f6260A, canvas);
            m15912L(str, this.f6261B, canvas);
            return;
        }
        m15912L(str, this.f6261B, canvas);
        m15912L(str, this.f6260A, canvas);
    }

    /* renamed from: O */
    private void m15909O(String str, DocumentData documentData, Canvas canvas, float f) {
        int i = 0;
        while (i < str.length()) {
            String K = m15913K(str, i);
            i += K.length();
            m15910N(K, documentData, canvas);
            canvas.translate(this.f6260A.measureText(K) + f, 0.0f);
        }
    }

    /* renamed from: P */
    private void m15908P(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawPath(path, paint);
            }
        }
    }

    /* renamed from: Q */
    private void m15907Q(String str, DocumentData documentData, Matrix matrix, Font font, Canvas canvas, float f, float f2) {
        float f3;
        float floatValue;
        for (int i = 0; i < str.length(); i++) {
            FontCharacter f4 = this.f6266G.m16344c().m21000f(FontCharacter.m16090c(str.charAt(i), font.m16095a(), font.m16093c()));
            if (f4 != null) {
                m15911M(f4, matrix, f2, documentData, canvas);
                float b = (float) f4.m16091b();
                float e = Utils.m15693e();
                float f5 = documentData.f6063e / 10.0f;
                BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.f6274O;
                if (baseKeyframeAnimation != null) {
                    floatValue = baseKeyframeAnimation.mo16113h().floatValue();
                } else {
                    BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.f6273N;
                    f3 = f5;
                    if (baseKeyframeAnimation2 != null) {
                        floatValue = baseKeyframeAnimation2.mo16113h().floatValue();
                    }
                    canvas.translate((b * f2 * e * f) + (f3 * f), 0.0f);
                }
                f3 = f5 + floatValue;
                canvas.translate((b * f2 * e * f) + (f3 * f), 0.0f);
            }
        }
    }

    /* renamed from: R */
    private void m15906R(DocumentData documentData, Matrix matrix, Font font, Canvas canvas) {
        float f;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.f6276Q;
        if (baseKeyframeAnimation != null) {
            f = baseKeyframeAnimation.mo16113h().floatValue();
        } else {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.f6275P;
            f = baseKeyframeAnimation2 != null ? baseKeyframeAnimation2.mo16113h().floatValue() : documentData.f6061c;
        }
        float f2 = f / 100.0f;
        float g = Utils.m15691g(matrix);
        String str = documentData.f6059a;
        float e = documentData.f6064f * Utils.m15693e();
        List<String> V = m15902V(str);
        int size = V.size();
        for (int i = 0; i < size; i++) {
            String str2 = V.get(i);
            float U = m15903U(str2, font, f2, g);
            canvas.save();
            m15914J(documentData.f6062d, canvas, U);
            canvas.translate(0.0f, (i * e) - (((size - 1) * e) / 2.0f));
            m15907Q(str2, documentData, matrix, font, canvas, g, f2);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0119 A[LOOP:0: B:23:0x0112->B:25:0x0119, LOOP_END] */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m15905S(com.airbnb.lottie.model.DocumentData r8, com.airbnb.lottie.model.Font r9, android.graphics.Matrix r10, android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.TextLayer.m15905S(com.airbnb.lottie.model.DocumentData, com.airbnb.lottie.model.Font, android.graphics.Matrix, android.graphics.Canvas):void");
    }

    /* renamed from: T */
    private List<ContentGroup> m15904T(FontCharacter fontCharacter) {
        if (this.f6262C.containsKey(fontCharacter)) {
            return this.f6262C.get(fontCharacter);
        }
        List<ShapeGroup> a = fontCharacter.m16092a();
        int size = a.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new ContentGroup(this.f6265F, this, a.get(i)));
        }
        this.f6262C.put(fontCharacter, arrayList);
        return arrayList;
    }

    /* renamed from: U */
    private float m15903U(String str, Font font, float f, float f2) {
        float f3 = 0.0f;
        for (int i = 0; i < str.length(); i++) {
            FontCharacter f4 = this.f6266G.m16344c().m21000f(FontCharacter.m16090c(str.charAt(i), font.m16095a(), font.m16093c()));
            if (f4 != null) {
                f3 = (float) (f3 + (f4.m16091b() * f * Utils.m15693e() * f2));
            }
        }
        return f3;
    }

    /* renamed from: V */
    private List<String> m15902V(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    /* renamed from: W */
    private boolean m15901W(int i) {
        return Character.getType(i) == 16 || Character.getType(i) == 27 || Character.getType(i) == 6 || Character.getType(i) == 28 || Character.getType(i) == 19;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        super.mo15900d(rectF, matrix, z);
        rectF.set(0.0f, 0.0f, this.f6266G.m16345b().width(), this.f6266G.m16345b().height());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t == LottieProperty.f5822a) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.f6268I;
            if (baseKeyframeAnimation != null) {
                m15968C(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f6268I = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f6268I = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.m16161a(this);
            m15958i(this.f6268I);
        } else if (t == LottieProperty.f5823b) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.f6270K;
            if (baseKeyframeAnimation2 != null) {
                m15968C(baseKeyframeAnimation2);
            }
            if (lottieValueCallback == null) {
                this.f6270K = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f6270K = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.m16161a(this);
            m15958i(this.f6270K);
        } else if (t == LottieProperty.f5836o) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation3 = this.f6272M;
            if (baseKeyframeAnimation3 != null) {
                m15968C(baseKeyframeAnimation3);
            }
            if (lottieValueCallback == null) {
                this.f6272M = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f6272M = valueCallbackKeyframeAnimation3;
            valueCallbackKeyframeAnimation3.m16161a(this);
            m15958i(this.f6272M);
        } else if (t == LottieProperty.f5837p) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation4 = this.f6274O;
            if (baseKeyframeAnimation4 != null) {
                m15968C(baseKeyframeAnimation4);
            }
            if (lottieValueCallback == null) {
                this.f6274O = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f6274O = valueCallbackKeyframeAnimation4;
            valueCallbackKeyframeAnimation4.m16161a(this);
            m15958i(this.f6274O);
        } else if (t == LottieProperty.f5819B) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation5 = this.f6276Q;
            if (baseKeyframeAnimation5 != null) {
                m15968C(baseKeyframeAnimation5);
            }
            if (lottieValueCallback == null) {
                this.f6276Q = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f6276Q = valueCallbackKeyframeAnimation5;
            valueCallbackKeyframeAnimation5.m16161a(this);
            m15958i(this.f6276Q);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: t */
    void mo15898t(Canvas canvas, Matrix matrix, int i) {
        canvas.save();
        if (!this.f6265F.m16240l0()) {
            canvas.concat(matrix);
        }
        DocumentData h = this.f6264E.mo16113h();
        Font font = this.f6266G.m16340g().get(h.f6060b);
        if (font == null) {
            canvas.restore();
            return;
        }
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.f6268I;
        if (baseKeyframeAnimation != null) {
            this.f6260A.setColor(baseKeyframeAnimation.mo16113h().intValue());
        } else {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.f6267H;
            if (baseKeyframeAnimation2 != null) {
                this.f6260A.setColor(baseKeyframeAnimation2.mo16113h().intValue());
            } else {
                this.f6260A.setColor(h.f6066h);
            }
        }
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation3 = this.f6270K;
        if (baseKeyframeAnimation3 != null) {
            this.f6261B.setColor(baseKeyframeAnimation3.mo16113h().intValue());
        } else {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation4 = this.f6269J;
            if (baseKeyframeAnimation4 != null) {
                this.f6261B.setColor(baseKeyframeAnimation4.mo16113h().intValue());
            } else {
                this.f6261B.setColor(h.f6067i);
            }
        }
        int intValue = ((this.f6216v.m16117h() == null ? 100 : this.f6216v.m16117h().mo16113h().intValue()) * 255) / 100;
        this.f6260A.setAlpha(intValue);
        this.f6261B.setAlpha(intValue);
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation5 = this.f6272M;
        if (baseKeyframeAnimation5 != null) {
            this.f6261B.setStrokeWidth(baseKeyframeAnimation5.mo16113h().floatValue());
        } else {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation6 = this.f6271L;
            if (baseKeyframeAnimation6 != null) {
                this.f6261B.setStrokeWidth(baseKeyframeAnimation6.mo16113h().floatValue());
            } else {
                this.f6261B.setStrokeWidth(h.f6068j * Utils.m15693e() * Utils.m15691g(matrix));
            }
        }
        if (this.f6265F.m16240l0()) {
            m15906R(h, matrix, font, canvas);
        } else {
            m15905S(h, font, matrix, canvas);
        }
        canvas.restore();
    }
}
