package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import java.util.Map;
import java.util.Objects;
import p072d7.C2484b;
import p072d7.C2485c;
import p099g1.AbstractC2800c;
import p099g1.AbstractC2801d;
import p110h1.C3000e;
import p117h8.C3035k;
import p134j4.C3258v1;
import p134j4.C3259w;
import p161l9.AbstractC3541a;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
import p261v2.C4596i;
import p261v2.C4597j;
import p265v6.AbstractC4651b;
import p270w0.C4712a;
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
public class C0249l implements AbstractC2801d, AbstractC3541a, AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f1010a;

    /* renamed from: b */
    public final Object f1011b;

    /* renamed from: c */
    public final Object f1012c;

    public C0249l() {
        this.f1010a = 6;
        C2485c c2485c = new C2485c();
        this.f1011b = c2485c;
        this.f1012c = new C2484b(c2485c);
    }

    public C0249l(EditText editText) {
        this.f1010a = 0;
        this.f1011b = editText;
        this.f1012c = new C4712a(editText, false);
    }

    public /* synthetic */ C0249l(Object obj, Object obj2, int i) {
        this.f1010a = i;
        this.f1011b = obj;
        this.f1012c = obj2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0249l(String str) {
        this(str, null, 2);
        this.f1010a = 2;
    }

    public C0249l(Map map) {
        this.f1010a = 5;
        this.f1012c = AbstractC4651b.f14347a;
        this.f1011b = map;
    }

    /* renamed from: a */
    public C4597j get() {
        return new C4597j((Context) ((AbstractC3541a) this.f1011b).get(), (C4596i) ((AbstractC3541a) this.f1012c).get());
    }

    /* renamed from: b */
    public KeyListener m8471b(KeyListener keyListener) {
        KeyListener keyListener2 = keyListener;
        if (!(keyListener instanceof NumberKeyListener)) {
            keyListener2 = ((C4712a) this.f1012c).f14564a.mo549a(keyListener);
        }
        return keyListener2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public void m8470c(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((EditText) this.f1011b).getContext().obtainStyledAttributes(attributeSet, C3035k.f10222i, i, 0);
        try {
            boolean z = true;
            if (obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, true);
            }
            obtainStyledAttributes.recycle();
            m8468f(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101 */
    /* JADX WARN: Type inference failed for: r0v102 */
    /* JADX WARN: Type inference failed for: r0v97 */
    @Override // p099g1.AbstractC2801d
    /* renamed from: d */
    public void mo2999d(AbstractC2800c abstractC2800c) {
        Object[] objArr = (Object[]) this.f1012c;
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            i++;
            if (obj == null) {
                ((C3000e) abstractC2800c).f10100a.bindNull(i);
            } else if (obj instanceof byte[]) {
                ((C3000e) abstractC2800c).f10100a.bindBlob(i, (byte[]) obj);
            } else if (obj instanceof Float) {
                ((C3000e) abstractC2800c).f10100a.bindDouble(i, ((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                ((C3000e) abstractC2800c).f10100a.bindDouble(i, ((Double) obj).doubleValue());
            } else if (obj instanceof Long) {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, ((Long) obj).longValue());
            } else if (obj instanceof Integer) {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, ((Integer) obj).intValue());
            } else if (obj instanceof Short) {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, ((Short) obj).shortValue());
            } else if (obj instanceof Byte) {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, ((Byte) obj).byteValue());
            } else if (obj instanceof String) {
                ((C3000e) abstractC2800c).f10100a.bindString(i, (String) obj);
            } else if (!(obj instanceof Boolean)) {
                throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
            } else {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, ((Boolean) obj).booleanValue() ? 1 : 0);
            }
        }
    }

    /* renamed from: e */
    public InputConnection m8469e(InputConnection inputConnection, EditorInfo editorInfo) {
        C4712a c4712a = (C4712a) this.f1012c;
        Objects.requireNonNull(c4712a);
        return inputConnection == null ? null : c4712a.f14564a.mo548b(inputConnection, editorInfo);
    }

    /* renamed from: f */
    public void m8468f(boolean z) {
        ((C4712a) this.f1012c).f14564a.mo547c(z);
    }

    @Override // p099g1.AbstractC2801d
    /* renamed from: k */
    public String mo2998k() {
        return (String) this.f1011b;
    }

    public String toString() {
        switch (this.f1010a) {
            case 5:
                return ((Map) this.f1011b).toString();
            default:
                return super.toString();
        }
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        return new C3258v1((C3259w) ((AbstractC3882s) this.f1011b).zza(), C3881r.m1736a((AbstractC3882s) this.f1012c));
    }
}
