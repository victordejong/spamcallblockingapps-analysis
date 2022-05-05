package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import java.lang.Throwable;
import kotlin.Metadata;
import kotlinx.coroutines.CopyableThrowable;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\u0010��\n\u0002\b\u0003\bg\u0018��*\u0012\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010��2\u00020\u0003J\u000f\u0010\u0004\u001a\u0004\u0018\u00018��H&¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m815d2 = {"Lkotlinx/coroutines/CopyableThrowable;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "createCopy", "()Ljava/lang/Throwable;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
@ExperimentalCoroutinesApi
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CopyableThrowable.class */
public interface CopyableThrowable<T extends Throwable & CopyableThrowable<T>> {
    T createCopy();
}
