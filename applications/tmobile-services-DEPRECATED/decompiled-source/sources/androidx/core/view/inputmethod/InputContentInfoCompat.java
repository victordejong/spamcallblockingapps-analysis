package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputContentInfoCompat.class */
public final class InputContentInfoCompat {

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl.class */
    private static final class InputContentInfoCompatApi25Impl implements InputContentInfoCompatImpl {
        @NonNull

        /* renamed from: a */
        final InputContentInfo f3357a;

        InputContentInfoCompatApi25Impl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            new InputContentInfo(uri, clipDescription, uri2);
        }

        InputContentInfoCompatApi25Impl(@NonNull Object obj) {
            this.f3357a = (InputContentInfo) obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl.class */
    private static final class InputContentInfoCompatBaseImpl implements InputContentInfoCompatImpl {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl.class */
    private interface InputContentInfoCompatImpl {
    }

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            new InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompatImpl inputContentInfoCompatImpl) {
    }

    @Nullable
    /* renamed from: a */
    public static InputContentInfoCompat m18946a(@Nullable Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new InputContentInfoCompatApi25Impl(obj));
        }
        return null;
    }
}
