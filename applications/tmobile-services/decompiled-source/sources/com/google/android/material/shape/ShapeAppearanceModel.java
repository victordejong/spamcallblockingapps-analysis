package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.C1027R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearanceModel.class */
public class ShapeAppearanceModel {

    /* renamed from: m */
    public static final CornerSize f11110m = new RelativeCornerSize(0.5f);

    /* renamed from: a */
    CornerTreatment f11111a;

    /* renamed from: b */
    CornerTreatment f11112b;

    /* renamed from: c */
    CornerTreatment f11113c;

    /* renamed from: d */
    CornerTreatment f11114d;

    /* renamed from: e */
    CornerSize f11115e;

    /* renamed from: f */
    CornerSize f11116f;

    /* renamed from: g */
    CornerSize f11117g;

    /* renamed from: h */
    CornerSize f11118h;

    /* renamed from: i */
    EdgeTreatment f11119i;

    /* renamed from: j */
    EdgeTreatment f11120j;

    /* renamed from: k */
    EdgeTreatment f11121k;

    /* renamed from: l */
    EdgeTreatment f11122l;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearanceModel$Builder.class */
    public static final class Builder {
        @NonNull

        /* renamed from: a */
        private CornerTreatment f11123a;
        @NonNull

        /* renamed from: b */
        private CornerTreatment f11124b;
        @NonNull

        /* renamed from: c */
        private CornerTreatment f11125c;
        @NonNull

        /* renamed from: d */
        private CornerTreatment f11126d;
        @NonNull

        /* renamed from: e */
        private CornerSize f11127e;
        @NonNull

        /* renamed from: f */
        private CornerSize f11128f;
        @NonNull

        /* renamed from: g */
        private CornerSize f11129g;
        @NonNull

        /* renamed from: h */
        private CornerSize f11130h;
        @NonNull

        /* renamed from: i */
        private EdgeTreatment f11131i;
        @NonNull

        /* renamed from: j */
        private EdgeTreatment f11132j;
        @NonNull

        /* renamed from: k */
        private EdgeTreatment f11133k;
        @NonNull

        /* renamed from: l */
        private EdgeTreatment f11134l;

        public Builder() {
            this.f11123a = MaterialShapeUtils.m9285b();
            this.f11124b = MaterialShapeUtils.m9285b();
            this.f11125c = MaterialShapeUtils.m9285b();
            this.f11126d = MaterialShapeUtils.m9285b();
            this.f11127e = new AbsoluteCornerSize(0.0f);
            this.f11128f = new AbsoluteCornerSize(0.0f);
            this.f11129g = new AbsoluteCornerSize(0.0f);
            this.f11130h = new AbsoluteCornerSize(0.0f);
            this.f11131i = MaterialShapeUtils.m9284c();
            this.f11132j = MaterialShapeUtils.m9284c();
            this.f11133k = MaterialShapeUtils.m9284c();
            this.f11134l = MaterialShapeUtils.m9284c();
        }

        public Builder(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
            this.f11123a = MaterialShapeUtils.m9285b();
            this.f11124b = MaterialShapeUtils.m9285b();
            this.f11125c = MaterialShapeUtils.m9285b();
            this.f11126d = MaterialShapeUtils.m9285b();
            this.f11127e = new AbsoluteCornerSize(0.0f);
            this.f11128f = new AbsoluteCornerSize(0.0f);
            this.f11129g = new AbsoluteCornerSize(0.0f);
            this.f11130h = new AbsoluteCornerSize(0.0f);
            this.f11131i = MaterialShapeUtils.m9284c();
            this.f11132j = MaterialShapeUtils.m9284c();
            this.f11133k = MaterialShapeUtils.m9284c();
            this.f11134l = MaterialShapeUtils.m9284c();
            this.f11123a = shapeAppearanceModel.f11111a;
            this.f11124b = shapeAppearanceModel.f11112b;
            this.f11125c = shapeAppearanceModel.f11113c;
            this.f11126d = shapeAppearanceModel.f11114d;
            this.f11127e = shapeAppearanceModel.f11115e;
            this.f11128f = shapeAppearanceModel.f11116f;
            this.f11129g = shapeAppearanceModel.f11117g;
            this.f11130h = shapeAppearanceModel.f11118h;
            this.f11131i = shapeAppearanceModel.f11119i;
            this.f11132j = shapeAppearanceModel.f11120j;
            this.f11133k = shapeAppearanceModel.f11121k;
            this.f11134l = shapeAppearanceModel.f11122l;
        }

        /* renamed from: n */
        private static float m9231n(CornerTreatment cornerTreatment) {
            if (cornerTreatment instanceof RoundedCornerTreatment) {
                return ((RoundedCornerTreatment) cornerTreatment).f11109a;
            }
            if (cornerTreatment instanceof CutCornerTreatment) {
                return ((CutCornerTreatment) cornerTreatment).f11050a;
            }
            return -1.0f;
        }

        @NonNull
        /* renamed from: A */
        public Builder m9253A(@NonNull EdgeTreatment edgeTreatment) {
            this.f11131i = edgeTreatment;
            return this;
        }

        @NonNull
        /* renamed from: B */
        public Builder m9252B(int i, @NonNull CornerSize cornerSize) {
            m9251C(MaterialShapeUtils.m9286a(i));
            m9249E(cornerSize);
            return this;
        }

        @NonNull
        /* renamed from: C */
        public Builder m9251C(@NonNull CornerTreatment cornerTreatment) {
            this.f11123a = cornerTreatment;
            float n = m9231n(cornerTreatment);
            if (n != -1.0f) {
                m9250D(n);
            }
            return this;
        }

        @NonNull
        /* renamed from: D */
        public Builder m9250D(@Dimension float f) {
            this.f11127e = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        /* renamed from: E */
        public Builder m9249E(@NonNull CornerSize cornerSize) {
            this.f11127e = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: F */
        public Builder m9248F(int i, @NonNull CornerSize cornerSize) {
            m9247G(MaterialShapeUtils.m9286a(i));
            m9245I(cornerSize);
            return this;
        }

        @NonNull
        /* renamed from: G */
        public Builder m9247G(@NonNull CornerTreatment cornerTreatment) {
            this.f11124b = cornerTreatment;
            float n = m9231n(cornerTreatment);
            if (n != -1.0f) {
                m9246H(n);
            }
            return this;
        }

        @NonNull
        /* renamed from: H */
        public Builder m9246H(@Dimension float f) {
            this.f11128f = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        /* renamed from: I */
        public Builder m9245I(@NonNull CornerSize cornerSize) {
            this.f11128f = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: m */
        public ShapeAppearanceModel m9232m() {
            return new ShapeAppearanceModel(this);
        }

        @NonNull
        /* renamed from: o */
        public Builder m9230o(@Dimension float f) {
            m9250D(f);
            m9246H(f);
            m9220y(f);
            m9224u(f);
            return this;
        }

        @NonNull
        /* renamed from: p */
        public Builder m9229p(int i, @Dimension float f) {
            m9228q(MaterialShapeUtils.m9286a(i));
            m9230o(f);
            return this;
        }

        @NonNull
        /* renamed from: q */
        public Builder m9228q(@NonNull CornerTreatment cornerTreatment) {
            m9251C(cornerTreatment);
            m9247G(cornerTreatment);
            m9221x(cornerTreatment);
            m9225t(cornerTreatment);
            return this;
        }

        @NonNull
        /* renamed from: r */
        public Builder m9227r(@NonNull EdgeTreatment edgeTreatment) {
            this.f11133k = edgeTreatment;
            return this;
        }

        @NonNull
        /* renamed from: s */
        public Builder m9226s(int i, @NonNull CornerSize cornerSize) {
            m9225t(MaterialShapeUtils.m9286a(i));
            m9223v(cornerSize);
            return this;
        }

        @NonNull
        /* renamed from: t */
        public Builder m9225t(@NonNull CornerTreatment cornerTreatment) {
            this.f11126d = cornerTreatment;
            float n = m9231n(cornerTreatment);
            if (n != -1.0f) {
                m9224u(n);
            }
            return this;
        }

        @NonNull
        /* renamed from: u */
        public Builder m9224u(@Dimension float f) {
            this.f11130h = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        /* renamed from: v */
        public Builder m9223v(@NonNull CornerSize cornerSize) {
            this.f11130h = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: w */
        public Builder m9222w(int i, @NonNull CornerSize cornerSize) {
            m9221x(MaterialShapeUtils.m9286a(i));
            m9219z(cornerSize);
            return this;
        }

        @NonNull
        /* renamed from: x */
        public Builder m9221x(@NonNull CornerTreatment cornerTreatment) {
            this.f11125c = cornerTreatment;
            float n = m9231n(cornerTreatment);
            if (n != -1.0f) {
                m9220y(n);
            }
            return this;
        }

        @NonNull
        /* renamed from: y */
        public Builder m9220y(@Dimension float f) {
            this.f11129g = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        /* renamed from: z */
        public Builder m9219z(@NonNull CornerSize cornerSize) {
            this.f11129g = cornerSize;
            return this;
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator.class */
    public interface CornerSizeUnaryOperator {
        @NonNull
        /* renamed from: a */
        CornerSize mo8457a(@NonNull CornerSize cornerSize);
    }

    public ShapeAppearanceModel() {
        this.f11111a = MaterialShapeUtils.m9285b();
        this.f11112b = MaterialShapeUtils.m9285b();
        this.f11113c = MaterialShapeUtils.m9285b();
        this.f11114d = MaterialShapeUtils.m9285b();
        this.f11115e = new AbsoluteCornerSize(0.0f);
        this.f11116f = new AbsoluteCornerSize(0.0f);
        this.f11117g = new AbsoluteCornerSize(0.0f);
        this.f11118h = new AbsoluteCornerSize(0.0f);
        this.f11119i = MaterialShapeUtils.m9284c();
        this.f11120j = MaterialShapeUtils.m9284c();
        this.f11121k = MaterialShapeUtils.m9284c();
        this.f11122l = MaterialShapeUtils.m9284c();
    }

    private ShapeAppearanceModel(@NonNull Builder builder) {
        this.f11111a = builder.f11123a;
        this.f11112b = builder.f11124b;
        this.f11113c = builder.f11125c;
        this.f11114d = builder.f11126d;
        this.f11115e = builder.f11127e;
        this.f11116f = builder.f11128f;
        this.f11117g = builder.f11129g;
        this.f11118h = builder.f11130h;
        this.f11119i = builder.f11131i;
        this.f11120j = builder.f11132j;
        this.f11121k = builder.f11133k;
        this.f11122l = builder.f11134l;
    }

    @NonNull
    /* renamed from: a */
    public static Builder m9277a() {
        return new Builder();
    }

    @NonNull
    /* renamed from: b */
    public static Builder m9276b(Context context, @StyleRes int i, @StyleRes int i2) {
        return m9275c(context, i, i2, 0);
    }

    @NonNull
    /* renamed from: c */
    private static Builder m9275c(Context context, @StyleRes int i, @StyleRes int i2, int i3) {
        return m9274d(context, i, i2, new AbsoluteCornerSize(i3));
    }

    @NonNull
    /* renamed from: d */
    private static Builder m9274d(Context context, @StyleRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        Context context2 = context;
        int i3 = i;
        if (i2 != 0) {
            context2 = new ContextThemeWrapper(context, i);
            i3 = i2;
        }
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(i3, C1027R.styleable.ShapeAppearance);
        try {
            int i4 = obtainStyledAttributes.getInt(C1027R.styleable.ShapeAppearance_cornerFamily, 0);
            int i5 = obtainStyledAttributes.getInt(C1027R.styleable.ShapeAppearance_cornerFamilyTopLeft, i4);
            int i6 = obtainStyledAttributes.getInt(C1027R.styleable.ShapeAppearance_cornerFamilyTopRight, i4);
            int i7 = obtainStyledAttributes.getInt(C1027R.styleable.ShapeAppearance_cornerFamilyBottomRight, i4);
            int i8 = obtainStyledAttributes.getInt(C1027R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i4);
            CornerSize m = m9265m(obtainStyledAttributes, C1027R.styleable.ShapeAppearance_cornerSize, cornerSize);
            CornerSize m2 = m9265m(obtainStyledAttributes, C1027R.styleable.ShapeAppearance_cornerSizeTopLeft, m);
            CornerSize m3 = m9265m(obtainStyledAttributes, C1027R.styleable.ShapeAppearance_cornerSizeTopRight, m);
            CornerSize m4 = m9265m(obtainStyledAttributes, C1027R.styleable.ShapeAppearance_cornerSizeBottomRight, m);
            CornerSize m5 = m9265m(obtainStyledAttributes, C1027R.styleable.ShapeAppearance_cornerSizeBottomLeft, m);
            Builder builder = new Builder();
            builder.m9252B(i5, m2);
            builder.m9248F(i6, m3);
            builder.m9222w(i7, m4);
            builder.m9226s(i8, m5);
            return builder;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    /* renamed from: e */
    public static Builder m9273e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        return m9272f(context, attributeSet, i, i2, 0);
    }

    @NonNull
    /* renamed from: f */
    public static Builder m9272f(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, int i3) {
        return m9271g(context, attributeSet, i, i2, new AbsoluteCornerSize(i3));
    }

    @NonNull
    /* renamed from: g */
    public static Builder m9271g(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return m9274d(context, resourceId, resourceId2, cornerSize);
    }

    @NonNull
    /* renamed from: m */
    private static CornerSize m9265m(TypedArray typedArray, int i, @NonNull CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return cornerSize;
        }
        int i2 = peekValue.type;
        return i2 == 5 ? new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f)) : cornerSize;
    }

    @NonNull
    /* renamed from: h */
    public EdgeTreatment m9270h() {
        return this.f11121k;
    }

    @NonNull
    /* renamed from: i */
    public CornerTreatment m9269i() {
        return this.f11114d;
    }

    @NonNull
    /* renamed from: j */
    public CornerSize m9268j() {
        return this.f11118h;
    }

    @NonNull
    /* renamed from: k */
    public CornerTreatment m9267k() {
        return this.f11113c;
    }

    @NonNull
    /* renamed from: l */
    public CornerSize m9266l() {
        return this.f11117g;
    }

    @NonNull
    /* renamed from: n */
    public EdgeTreatment m9264n() {
        return this.f11122l;
    }

    @NonNull
    /* renamed from: o */
    public EdgeTreatment m9263o() {
        return this.f11120j;
    }

    @NonNull
    /* renamed from: p */
    public EdgeTreatment m9262p() {
        return this.f11119i;
    }

    @NonNull
    /* renamed from: q */
    public CornerTreatment m9261q() {
        return this.f11111a;
    }

    @NonNull
    /* renamed from: r */
    public CornerSize m9260r() {
        return this.f11115e;
    }

    @NonNull
    /* renamed from: s */
    public CornerTreatment m9259s() {
        return this.f11112b;
    }

    @NonNull
    /* renamed from: t */
    public CornerSize m9258t() {
        return this.f11116f;
    }

    @RestrictTo
    /* renamed from: u */
    public boolean m9257u(@NonNull RectF rectF) {
        boolean z = true;
        boolean z2 = this.f11122l.getClass().equals(EdgeTreatment.class) && this.f11120j.getClass().equals(EdgeTreatment.class) && this.f11119i.getClass().equals(EdgeTreatment.class) && this.f11121k.getClass().equals(EdgeTreatment.class);
        float a = this.f11115e.mo9279a(rectF);
        boolean z3 = this.f11116f.mo9279a(rectF) == a && this.f11118h.mo9279a(rectF) == a && this.f11117g.mo9279a(rectF) == a;
        boolean z4 = (this.f11112b instanceof RoundedCornerTreatment) && (this.f11111a instanceof RoundedCornerTreatment) && (this.f11113c instanceof RoundedCornerTreatment) && (this.f11114d instanceof RoundedCornerTreatment);
        if (!z2 || !z3 || !z4) {
            z = false;
        }
        return z;
    }

    @NonNull
    /* renamed from: v */
    public Builder m9256v() {
        return new Builder(this);
    }

    @NonNull
    /* renamed from: w */
    public ShapeAppearanceModel m9255w(float f) {
        Builder v = m9256v();
        v.m9230o(f);
        return v.m9232m();
    }

    @NonNull
    @RestrictTo
    /* renamed from: x */
    public ShapeAppearanceModel m9254x(@NonNull CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        Builder v = m9256v();
        v.m9249E(cornerSizeUnaryOperator.mo8457a(m9260r()));
        v.m9245I(cornerSizeUnaryOperator.mo8457a(m9258t()));
        v.m9223v(cornerSizeUnaryOperator.mo8457a(m9268j()));
        v.m9219z(cornerSizeUnaryOperator.mo8457a(m9266l()));
        return v.m9232m();
    }
}
