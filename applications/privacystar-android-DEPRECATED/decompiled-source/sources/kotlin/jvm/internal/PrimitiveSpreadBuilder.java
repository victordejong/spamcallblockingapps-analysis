package kotlin.jvm.internal;

import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.privacystar.core.service.googleplay.IABConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\b&\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028��¢\u0006\u0002\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0004H\u0004J\u001d\u0010\u0013\u001a\u00028��2\u0006\u0010\u0014\u001a\u00028��2\u0006\u0010\u0015\u001a\u00028��H\u0004¢\u0006\u0002\u0010\u0016J\u0011\u0010\u0017\u001a\u00020\u0004*\u00028��H$¢\u0006\u0002\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u000bX\u0082\u0004¢\u0006\n\n\u0002\u0010\u000e\u0012\u0004\b\f\u0010\r¨\u0006\u0019"}, m254d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "T", "", "size", "", "(I)V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "getPosition", "()I", "setPosition", "spreads", "", "spreads$annotations", "()V", "[Ljava/lang/Object;", "addSpread", "", "spreadArgument", "(Ljava/lang/Object;)V", "toArray", "values", IABConstants.JSON_RESULT, "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getSize", "(Ljava/lang/Object;)I", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PrimitiveSpreadBuilder.class */
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i) {
        this.size = i;
        this.spreads = (T[]) new Object[this.size];
    }

    private static /* synthetic */ void spreads$annotations() {
    }

    public final void addSpread(@NotNull T spreadArgument) {
        Intrinsics.checkParameterIsNotNull(spreadArgument, "spreadArgument");
        T[] tArr = this.spreads;
        int i = this.position;
        this.position = i + 1;
        tArr[i] = spreadArgument;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPosition() {
        return this.position;
    }

    protected abstract int getSize(@NotNull T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPosition(int i) {
        this.position = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int size() {
        int i = this.size - 1;
        int i2 = 0;
        int i3 = 0;
        if (i >= 0) {
            int i4 = 0;
            while (true) {
                T t = this.spreads[i4];
                i3 += t != null ? getSize(t) : 1;
                i2 = i3;
                if (i4 == i) {
                    break;
                }
                i4++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final T toArray(@NotNull T values, @NotNull T result) {
        int i;
        int i2;
        Intrinsics.checkParameterIsNotNull(values, "values");
        Intrinsics.checkParameterIsNotNull(result, "result");
        int i3 = this.size - 1;
        int i4 = 0;
        if (i3 >= 0) {
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                T t = this.spreads[i5];
                i2 = i6;
                i = i7;
                if (t != null) {
                    int i8 = i7;
                    if (i6 < i5) {
                        int i9 = i5 - i6;
                        System.arraycopy(values, i6, result, i7, i9);
                        i8 = i7 + i9;
                    }
                    int size = getSize(t);
                    System.arraycopy(t, 0, result, i8, size);
                    i = i8 + size;
                    i2 = i5 + 1;
                }
                if (i5 == i3) {
                    break;
                }
                i5++;
                i6 = i2;
                i7 = i;
            }
            i4 = i2;
        } else {
            i = 0;
        }
        if (i4 < this.size) {
            System.arraycopy(values, i4, result, i, this.size - i4);
        }
        return result;
    }
}
