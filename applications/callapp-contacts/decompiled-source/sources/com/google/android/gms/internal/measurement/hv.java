package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hv.class */
final class hv {

    /* renamed from: a  reason: collision with root package name */
    private static final hu f29098a;

    /* renamed from: b  reason: collision with root package name */
    private static final hu f29099b;

    static {
        hu huVar;
        try {
            huVar = (hu) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            huVar = null;
        }
        f29098a = huVar;
        f29099b = new hu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static hu a() {
        return f29098a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static hu b() {
        return f29099b;
    }
}
