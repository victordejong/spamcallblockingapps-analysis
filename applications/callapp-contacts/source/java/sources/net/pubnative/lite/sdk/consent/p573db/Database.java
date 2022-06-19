package net.pubnative.lite.sdk.consent.p573db;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\u0002\u0018��2\u00020\u0001B\n\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Database;", "", "tableName", "", "()Ljava/lang/String;", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: net.pubnative.lite.sdk.consent.db.Database */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Database.class */
public @interface Database {
    String tableName() default "";
}
