package p270w0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.emoji2.text.C0354d;
import java.util.Objects;
import p124i4.C3102d;
/* renamed from: w0.f */
/* loaded from: classes-dex2jar.jar:w0/f.class */
public final class C4722f {

    /* renamed from: a */
    public final C4724b f14578a;

    /* renamed from: w0.f$a */
    /* loaded from: classes-dex2jar.jar:w0/f$a.class */
    public static class C4723a extends C4724b {

        /* renamed from: a */
        public final TextView f14579a;

        /* renamed from: b */
        public final C4718d f14580b;

        /* renamed from: c */
        public boolean f14581c = true;

        public C4723a(TextView textView) {
            this.f14579a = textView;
            this.f14580b = new C4718d(textView);
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: a */
        public InputFilter[] mo545a(InputFilter[] inputFilterArr) {
            if (this.f14581c) {
                int length = inputFilterArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
                        System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
                        inputFilterArr2[length] = this.f14580b;
                        inputFilterArr = inputFilterArr2;
                        break;
                    } else if (inputFilterArr[i] == this.f14580b) {
                        break;
                    } else {
                        i++;
                    }
                }
                return inputFilterArr;
            }
            SparseArray sparseArray = new SparseArray(1);
            for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                if (inputFilterArr[i2] instanceof C4718d) {
                    sparseArray.put(i2, inputFilterArr[i2]);
                }
            }
            if (sparseArray.size() != 0) {
                int length2 = inputFilterArr.length;
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i3 = 0;
                int i4 = 0;
                while (i4 < length2) {
                    int i5 = i3;
                    if (sparseArray.indexOfKey(i4) < 0) {
                        inputFilterArr3[i3] = inputFilterArr[i4];
                        i5 = i3 + 1;
                    }
                    i4++;
                    i3 = i5;
                }
                inputFilterArr = inputFilterArr3;
            }
            return inputFilterArr;
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: b */
        public boolean mo544b() {
            return this.f14581c;
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: c */
        public void mo543c(boolean z) {
            if (z) {
                this.f14579a.setTransformationMethod(mo541e(this.f14579a.getTransformationMethod()));
            }
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: d */
        public void mo542d(boolean z) {
            this.f14581c = z;
            this.f14579a.setTransformationMethod(mo541e(this.f14579a.getTransformationMethod()));
            this.f14579a.setFilters(mo545a(this.f14579a.getFilters()));
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: e */
        public TransformationMethod mo541e(TransformationMethod transformationMethod) {
            if (this.f14581c) {
                if (!(transformationMethod instanceof C4728h) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                    transformationMethod = new C4728h(transformationMethod);
                }
                return transformationMethod;
            }
            TransformationMethod transformationMethod2 = transformationMethod;
            if (transformationMethod instanceof C4728h) {
                transformationMethod2 = ((C4728h) transformationMethod).f14588a;
            }
            return transformationMethod2;
        }
    }

    /* renamed from: w0.f$b */
    /* loaded from: classes-dex2jar.jar:w0/f$b.class */
    public static class C4724b {
        /* renamed from: a */
        public InputFilter[] mo545a(InputFilter[] inputFilterArr) {
            throw null;
        }

        /* renamed from: b */
        public boolean mo544b() {
            throw null;
        }

        /* renamed from: c */
        public void mo543c(boolean z) {
            throw null;
        }

        /* renamed from: d */
        public void mo542d(boolean z) {
            throw null;
        }

        /* renamed from: e */
        public TransformationMethod mo541e(TransformationMethod transformationMethod) {
            throw null;
        }
    }

    /* renamed from: w0.f$c */
    /* loaded from: classes-dex2jar.jar:w0/f$c.class */
    public static class C4725c extends C4724b {

        /* renamed from: a */
        public final C4723a f14582a;

        public C4725c(TextView textView) {
            this.f14582a = new C4723a(textView);
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: a */
        public InputFilter[] mo545a(InputFilter[] inputFilterArr) {
            return m540f() ? inputFilterArr : this.f14582a.mo545a(inputFilterArr);
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: b */
        public boolean mo544b() {
            return this.f14582a.f14581c;
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: c */
        public void mo543c(boolean z) {
            if (m540f()) {
                return;
            }
            C4723a c4723a = this.f14582a;
            Objects.requireNonNull(c4723a);
            if (!z) {
                return;
            }
            c4723a.f14579a.setTransformationMethod(c4723a.mo541e(c4723a.f14579a.getTransformationMethod()));
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: d */
        public void mo542d(boolean z) {
            if (m540f()) {
                this.f14582a.f14581c = z;
            } else {
                this.f14582a.mo542d(z);
            }
        }

        @Override // p270w0.C4722f.C4724b
        /* renamed from: e */
        public TransformationMethod mo541e(TransformationMethod transformationMethod) {
            return m540f() ? transformationMethod : this.f14582a.mo541e(transformationMethod);
        }

        /* renamed from: f */
        public final boolean m540f() {
            return !C0354d.m8253c();
        }
    }

    public C4722f(TextView textView, boolean z) {
        C3102d.m2628k(textView, "textView cannot be null");
        if (!z) {
            this.f14578a = new C4725c(textView);
        } else {
            this.f14578a = new C4723a(textView);
        }
    }
}
