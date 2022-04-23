package androidx.core.p005os;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0002\u001a;\u0010��\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m815d2 = {"bundleOf", "Landroid/os/Bundle;", "pairs", "", "Lkotlin/Pair;", "", "", "([Lkotlin/Pair;)Landroid/os/Bundle;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* renamed from: androidx.core.os.BundleKt */
/* loaded from: classes-dex2jar.jar:androidx/core/os/BundleKt.class */
public final class BundleKt {
    public static final Bundle bundleOf(C14978j<String, ? extends Object>... jVarArr) {
        C15149k.m377b(jVarArr, "pairs");
        Bundle bundle = new Bundle(jVarArr.length);
        for (C14978j<String, ? extends Object> jVar : jVarArr) {
            String a = jVar.m661a();
            Object b = jVar.m660b();
            if (b == null) {
                bundle.putString(a, null);
            } else if (b instanceof Boolean) {
                bundle.putBoolean(a, ((Boolean) b).booleanValue());
            } else if (b instanceof Byte) {
                bundle.putByte(a, ((Number) b).byteValue());
            } else if (b instanceof Character) {
                bundle.putChar(a, ((Character) b).charValue());
            } else if (b instanceof Double) {
                bundle.putDouble(a, ((Number) b).doubleValue());
            } else if (b instanceof Float) {
                bundle.putFloat(a, ((Number) b).floatValue());
            } else if (b instanceof Integer) {
                bundle.putInt(a, ((Number) b).intValue());
            } else if (b instanceof Long) {
                bundle.putLong(a, ((Number) b).longValue());
            } else if (b instanceof Short) {
                bundle.putShort(a, ((Number) b).shortValue());
            } else if (b instanceof Bundle) {
                bundle.putBundle(a, (Bundle) b);
            } else if (b instanceof CharSequence) {
                bundle.putCharSequence(a, (CharSequence) b);
            } else if (b instanceof Parcelable) {
                bundle.putParcelable(a, (Parcelable) b);
            } else if (b instanceof boolean[]) {
                bundle.putBooleanArray(a, (boolean[]) b);
            } else if (b instanceof byte[]) {
                bundle.putByteArray(a, (byte[]) b);
            } else if (b instanceof char[]) {
                bundle.putCharArray(a, (char[]) b);
            } else if (b instanceof double[]) {
                bundle.putDoubleArray(a, (double[]) b);
            } else if (b instanceof float[]) {
                bundle.putFloatArray(a, (float[]) b);
            } else if (b instanceof int[]) {
                bundle.putIntArray(a, (int[]) b);
            } else if (b instanceof long[]) {
                bundle.putLongArray(a, (long[]) b);
            } else if (b instanceof short[]) {
                bundle.putShortArray(a, (short[]) b);
            } else if (b instanceof Object[]) {
                Class<?> componentType = b.getClass().getComponentType();
                if (componentType != null) {
                    C15149k.m383a((Object) componentType, "value::class.java.componentType!!");
                    if (Parcelable.class.isAssignableFrom(componentType)) {
                        if (b != null) {
                            bundle.putParcelableArray(a, (Parcelable[]) b);
                        } else {
                            throw new C14986p("null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>");
                        }
                    } else if (String.class.isAssignableFrom(componentType)) {
                        if (b != null) {
                            bundle.putStringArray(a, (String[]) b);
                        } else {
                            throw new C14986p("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                        }
                    } else if (CharSequence.class.isAssignableFrom(componentType)) {
                        if (b != null) {
                            bundle.putCharSequenceArray(a, (CharSequence[]) b);
                        } else {
                            throw new C14986p("null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>");
                        }
                    } else if (Serializable.class.isAssignableFrom(componentType)) {
                        bundle.putSerializable(a, (Serializable) b);
                    } else {
                        throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + a + '\"');
                    }
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else if (b instanceof Serializable) {
                bundle.putSerializable(a, (Serializable) b);
            } else if (Build.VERSION.SDK_INT >= 18 && (b instanceof Binder)) {
                bundle.putBinder(a, (IBinder) b);
            } else if (Build.VERSION.SDK_INT >= 21 && (b instanceof Size)) {
                bundle.putSize(a, (Size) b);
            } else if (Build.VERSION.SDK_INT < 21 || !(b instanceof SizeF)) {
                throw new IllegalArgumentException("Illegal value type " + b.getClass().getCanonicalName() + " for key \"" + a + '\"');
            } else {
                bundle.putSizeF(a, (SizeF) b);
            }
        }
        return bundle;
    }
}
