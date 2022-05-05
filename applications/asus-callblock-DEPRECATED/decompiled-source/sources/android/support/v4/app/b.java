package android.support.v4.app;

import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/b.class */
final class b {

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/b$a.class */
    public static abstract class a {
        public abstract Parcelable a(View view, Matrix matrix, RectF rectF);

        public abstract View a(Context context, Parcelable parcelable);
    }

    /* renamed from: android.support.v4.app.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/b$b.class */
    private static final class SharedElementCallbackC0005b extends SharedElementCallback {

        /* renamed from: a  reason: collision with root package name */
        private a f55a;

        public SharedElementCallbackC0005b(a aVar) {
            this.f55a = aVar;
        }

        @Override // android.app.SharedElementCallback
        public final Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f55a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public final View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f55a.a(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public final void onMapSharedElements(List<String> list, Map<String, View> map) {
        }

        @Override // android.app.SharedElementCallback
        public final void onRejectSharedElements(List<View> list) {
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SharedElementCallback a(a aVar) {
        SharedElementCallbackC0005b bVar = null;
        if (aVar != null) {
            bVar = new SharedElementCallbackC0005b(aVar);
        }
        return bVar;
    }
}
