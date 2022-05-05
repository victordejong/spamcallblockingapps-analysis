package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/work/InputMergerFactory.class */
public abstract class InputMergerFactory {
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static InputMergerFactory getDefaultInputMergerFactory() {
        return new InputMergerFactory() { // from class: androidx.work.InputMergerFactory.1
            @Override // androidx.work.InputMergerFactory
            @Nullable
            public InputMerger createInputMerger(@NonNull String str) {
                return null;
            }
        };
    }

    @Nullable
    public abstract InputMerger createInputMerger(@NonNull String str);

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final InputMerger createInputMergerWithDefaultFallback(@NonNull String str) {
        InputMerger createInputMerger = createInputMerger(str);
        InputMerger inputMerger = createInputMerger;
        if (createInputMerger == null) {
            inputMerger = InputMerger.fromClassName(str);
        }
        return inputMerger;
    }
}
