package com.google.android.material.k;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o.class */
public final class o {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public float f30708a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public float f30709b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public float f30710c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public float f30711d;
    @Deprecated
    public float e;
    @Deprecated
    public float f;
    boolean g;
    private final List<e> h = new ArrayList();
    private final List<f> i = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$a.class */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        private final c f30715a;

        public a(c cVar) {
            this.f30715a = cVar;
        }

        @Override // com.google.android.material.k.o.f
        public final void a(Matrix matrix, com.google.android.material.j.a aVar, int i, Canvas canvas) {
            float f = this.f30715a.e;
            float f2 = this.f30715a.f;
            RectF rectF = new RectF(this.f30715a.f30719a, this.f30715a.f30720b, this.f30715a.f30721c, this.f30715a.f30722d);
            boolean z = f2 < BitmapDescriptorFactory.HUE_RED;
            Path path = aVar.k;
            if (z) {
                com.google.android.material.j.a.i[0] = 0;
                com.google.android.material.j.a.i[1] = aVar.f;
                com.google.android.material.j.a.i[2] = aVar.e;
                com.google.android.material.j.a.i[3] = aVar.f30670d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f, f2);
                path.close();
                float f3 = -i;
                rectF.inset(f3, f3);
                com.google.android.material.j.a.i[0] = 0;
                com.google.android.material.j.a.i[1] = aVar.f30670d;
                com.google.android.material.j.a.i[2] = aVar.e;
                com.google.android.material.j.a.i[3] = aVar.f;
            }
            float width = rectF.width() / 2.0f;
            if (width > BitmapDescriptorFactory.HUE_RED) {
                float f4 = 1.0f - (i / width);
                com.google.android.material.j.a.j[1] = f4;
                com.google.android.material.j.a.j[2] = ((1.0f - f4) / 2.0f) + f4;
                aVar.f30668b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, com.google.android.material.j.a.i, com.google.android.material.j.a.j, Shader.TileMode.CLAMP));
                canvas.save();
                canvas.concat(matrix);
                if (!z) {
                    canvas.clipPath(path, Region.Op.DIFFERENCE);
                    canvas.drawPath(path, aVar.l);
                }
                canvas.drawArc(rectF, f, f2, true, aVar.f30668b);
                canvas.restore();
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$b.class */
    static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final d f30716a;

        /* renamed from: b  reason: collision with root package name */
        private final float f30717b;

        /* renamed from: c  reason: collision with root package name */
        private final float f30718c;

        public b(d dVar, float f, float f2) {
            this.f30716a = dVar;
            this.f30717b = f;
            this.f30718c = f2;
        }

        final float a() {
            return (float) Math.toDegrees(Math.atan((this.f30716a.f30724b - this.f30718c) / (this.f30716a.f30723a - this.f30717b)));
        }

        @Override // com.google.android.material.k.o.f
        public final void a(Matrix matrix, com.google.android.material.j.a aVar, int i, Canvas canvas) {
            RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) Math.hypot(this.f30716a.f30724b - this.f30718c, this.f30716a.f30723a - this.f30717b), BitmapDescriptorFactory.HUE_RED);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f30717b, this.f30718c);
            matrix2.preRotate(a());
            rectF.bottom += i;
            rectF.offset(BitmapDescriptorFactory.HUE_RED, -i);
            com.google.android.material.j.a.g[0] = aVar.f;
            com.google.android.material.j.a.g[1] = aVar.e;
            com.google.android.material.j.a.g[2] = aVar.f30670d;
            aVar.f30669c.setShader(new LinearGradient(rectF.left, rectF.top, rectF.left, rectF.bottom, com.google.android.material.j.a.g, com.google.android.material.j.a.h, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, aVar.f30669c);
            canvas.restore();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$c.class */
    public static final class c extends e {
        private static final RectF h = new RectF();
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        public float f30719a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public float f30720b;
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        public float f30721c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public float f30722d;
        @Deprecated
        public float e;
        @Deprecated
        public float f;

        public c(float f, float f2, float f3, float f4) {
            this.f30719a = f;
            this.f30720b = f2;
            this.f30721c = f3;
            this.f30722d = f4;
        }

        @Override // com.google.android.material.k.o.e
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = h;
            rectF.set(this.f30719a, this.f30720b, this.f30721c, this.f30722d);
            path.arcTo(rectF, this.e, this.f, false);
            path.transform(matrix);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$d.class */
    public static final class d extends e {

        /* renamed from: a  reason: collision with root package name */
        float f30723a;

        /* renamed from: b  reason: collision with root package name */
        float f30724b;

        @Override // com.google.android.material.k.o.e
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f30723a, this.f30724b);
            path.transform(matrix);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$e.class */
    public static abstract class e {
        protected final Matrix g = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$f.class */
    public static abstract class f {

        /* renamed from: d  reason: collision with root package name */
        static final Matrix f30725d = new Matrix();

        f() {
        }

        public abstract void a(Matrix matrix, com.google.android.material.j.a aVar, int i, Canvas canvas);

        public final void a(com.google.android.material.j.a aVar, int i, Canvas canvas) {
            a(f30725d, aVar, i, canvas);
        }
    }

    public o() {
        a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    public o(float f2, float f3) {
        a(f2, f3);
    }

    private void a(float f2) {
        float f3 = this.e;
        if (f3 != f2) {
            float f4 = ((f2 - f3) + 360.0f) % 360.0f;
            if (f4 <= 180.0f) {
                float f5 = this.f30710c;
                float f6 = this.f30711d;
                c cVar = new c(f5, f6, f5, f6);
                cVar.e = this.e;
                cVar.f = f4;
                this.i.add(new a(cVar));
                this.e = f2;
            }
        }
    }

    private void a(f fVar, float f2, float f3) {
        a(f2);
        this.i.add(fVar);
        this.e = f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a(Matrix matrix) {
        a(this.f);
        final Matrix matrix2 = new Matrix(matrix);
        final ArrayList arrayList = new ArrayList(this.i);
        return new f() { // from class: com.google.android.material.k.o.1
            @Override // com.google.android.material.k.o.f
            public final void a(Matrix matrix3, com.google.android.material.j.a aVar, int i, Canvas canvas) {
                for (f fVar : arrayList) {
                    fVar.a(matrix2, aVar, i, canvas);
                }
            }
        };
    }

    public final void a(float f2, float f3) {
        a(f2, f3, 270.0f, BitmapDescriptorFactory.HUE_RED);
    }

    public final void a(float f2, float f3, float f4, float f5) {
        this.f30708a = f2;
        this.f30709b = f3;
        this.f30710c = f2;
        this.f30711d = f3;
        this.e = f4;
        this.f = (f4 + f5) % 360.0f;
        this.h.clear();
        this.i.clear();
        this.g = false;
    }

    public final void a(float f2, float f3, float f4, float f5, float f6, float f7) {
        c cVar = new c(f2, f3, f4, f5);
        cVar.e = f6;
        cVar.f = f7;
        this.h.add(cVar);
        a aVar = new a(cVar);
        float f8 = f6 + f7;
        boolean z = f7 < BitmapDescriptorFactory.HUE_RED;
        float f9 = f6;
        if (z) {
            f9 = (f6 + 180.0f) % 360.0f;
        }
        a(aVar, f9, z ? (180.0f + f8) % 360.0f : f8);
        double d2 = f8;
        this.f30710c = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d2))));
        this.f30711d = ((f3 + f5) * 0.5f) + (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d2))));
    }

    public final void a(Matrix matrix, Path path) {
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            this.h.get(i).a(matrix, path);
        }
    }

    public final void b(float f2, float f3) {
        d dVar = new d();
        dVar.f30723a = f2;
        dVar.f30724b = f3;
        this.h.add(dVar);
        b bVar = new b(dVar, this.f30710c, this.f30711d);
        a(bVar, bVar.a() + 270.0f, bVar.a() + 270.0f);
        this.f30710c = f2;
        this.f30711d = f3;
    }
}
