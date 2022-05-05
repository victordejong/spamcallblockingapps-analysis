package androidx.versionedparcelable;

import android.support.annotation.RestrictTo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.SOURCE)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/NonParcelField.class */
public @interface NonParcelField {
}
