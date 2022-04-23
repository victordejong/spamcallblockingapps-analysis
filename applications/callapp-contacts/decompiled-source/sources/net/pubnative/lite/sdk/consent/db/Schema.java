package net.pubnative.lite.sdk.consent.db;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\u0002\u0018��2\u00020\u0001B0\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005R\u000f\u0010\u0007\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\nR\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\tR\u000f\u0010\u0006\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\tR\u000f\u0010\b\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/Schema;", "", "field", "", "generatedId", "", "nonNullable", "autoIncrease", "unique", "()Z", "()Ljava/lang/String;", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Schema.class */
public @interface Schema {
    boolean autoIncrease() default false;

    String field();

    boolean generatedId() default false;

    boolean nonNullable() default false;

    boolean unique() default false;
}
