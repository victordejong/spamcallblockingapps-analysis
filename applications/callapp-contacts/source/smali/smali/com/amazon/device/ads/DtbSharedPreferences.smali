.class Lcom/amazon/device/ads/DtbSharedPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/amazon/device/ads/DtbSharedPreferences; = null

.field private static b:Landroid/content/SharedPreferences; = null

.field private static c:Z = false

.field private static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.amazon.device.ads.dtb.preferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->b:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 343
    sget-boolean v0, Lcom/amazon/device/ads/DtbSharedPreferences;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 346
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->v()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 348
    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_1
    const-class v2, Ljava/util/Set;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 353
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 355
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 357
    :cond_3
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    .line 358
    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 359
    :cond_4
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 361
    :cond_5
    const-class v1, Ljava/lang/Float;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x0

    .line 362
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 364
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(J)V
    .locals 0

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "amzn-dtb-ad-sis-last-checkin"

    invoke-static {p1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amzn-dtb-version_in_use"

    .line 97
    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 312
    sget-boolean v0, Lcom/amazon/device/ads/DtbSharedPreferences;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->v()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 323
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 324
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 325
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 326
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 327
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 328
    :cond_3
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 329
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 330
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 331
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 332
    :cond_5
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 333
    check-cast p1, Ljava/util/Set;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 337
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 335
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 57
    sput-boolean p0, Lcom/amazon/device/ads/DtbSharedPreferences;->d:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/amazon/device/ads/DtbSharedPreferences;->d:Z

    return v0
.end method

.method public static b()Lcom/amazon/device/ads/DtbSharedPreferences;
    .locals 1

    .line 79
    new-instance v0, Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;-><init>()V

    .line 80
    sput-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->a:Lcom/amazon/device/ads/DtbSharedPreferences;

    return-object v0
.end method

.method public static b(J)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "amzn-dtb-ad-sis-last-checkin"

    invoke-static {p1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "amzn-dtb-ad-id"

    .line 117
    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 157
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "amzn-dtb-adid-new"

    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c()Lcom/amazon/device/ads/DtbSharedPreferences;
    .locals 2

    .line 84
    sget-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->a:Lcom/amazon/device/ads/DtbSharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to retrieve shared preferences without intialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(J)V
    .locals 6

    const-wide/32 v0, 0xa4cb800

    const-string v2, "amzn-dtb-ad-config-ttl"

    const-wide/16 v3, 0x1

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    cmp-long v3, p0, v0

    if-lez v3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 231
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amzn-dtb-idfa"

    if-eqz p0, :cond_0

    .line 131
    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, ""

    .line 133
    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 166
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "amzn-dtb-adid-changed"

    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 93
    const-class v0, Ljava/lang/String;

    const-string v1, "amzn-dtb-version_in_use"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static d(J)V
    .locals 0

    .line 262
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "amzn-dtb-web-resource-ping"

    invoke-static {p1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 196
    invoke-static {p0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "amzn-dtb-ad-aax-hostname"

    if-nez v0, :cond_0

    .line 197
    invoke-static {v1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_0
    sget-object p0, Lcom/amazon/device/ads/DtbConstants;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Z)V
    .locals 1

    .line 175
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "amzn-dtb-is-gps-unavailable"

    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 112
    const-class v0, Ljava/lang/String;

    const-string v1, "amzn-dtb-ad-id"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static e(J)V
    .locals 0

    .line 280
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "sdk-wrapper-ping"

    invoke-static {p1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .line 238
    invoke-static {p0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "/api3"

    const-string v3, "amzn-dtb-ad-sis-endpoint"

    if-nez v0, :cond_1

    .line 239
    const-class v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 245
    :cond_0
    invoke-static {v3, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 248
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public static f()V
    .locals 1

    const-string v0, "amzn-dtb-ad-id"

    .line 122
    invoke-static {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static f(J)V
    .locals 0

    .line 303
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "amzn-dtb-ad-sis-last-ping"

    invoke-static {p1, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NON_IAB_Custom_Consent"

    .line 406
    invoke-static {v0, p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 126
    const-class v0, Ljava/lang/String;

    const-string v1, "amzn-dtb-idfa"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2

    .line 373
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->v()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static i()Z
    .locals 2

    .line 171
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "amzn-dtb-is-gps-unavailable"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static j()Ljava/lang/Long;
    .locals 2

    .line 179
    const-class v0, Ljava/lang/Long;

    const-string v1, "amzn-dtb-ad-sis-last-checkin"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static k()Ljava/lang/Long;
    .locals 2

    .line 187
    const-class v0, Ljava/lang/Long;

    const-string v1, "amzn-dtb-ad-sis-last-checkin"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 204
    const-class v0, Ljava/lang/String;

    const-string v1, "amzn-dtb-ad-aax-hostname"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/amazon/device/ads/DtbDebugProperties;->a:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->b:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/amazon/device/ads/DtbDebugProperties;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->b:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 215
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbDebugProperties;->a:Z

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbDebugProperties;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static n()J
    .locals 7

    .line 222
    const-class v0, Ljava/lang/Long;

    const-string v1, "amzn-dtb-ad-config-ttl"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .line 254
    const-class v0, Ljava/lang/String;

    const-string v1, "amzn-dtb-ad-sis-endpoint"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/DtbConstants;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static p()Ljava/lang/Long;
    .locals 2

    .line 266
    const-class v0, Ljava/lang/Long;

    const-string v1, "amzn-dtb-web-resource-ping"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method static q()Ljava/lang/Long;
    .locals 2

    .line 284
    const-class v0, Ljava/lang/Long;

    const-string v1, "sdk-wrapper-ping"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static r()J
    .locals 2

    .line 307
    const-class v0, Ljava/lang/Long;

    const-string v1, "amzn-dtb-ad-sis-last-ping"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static s()Ljava/lang/String;
    .locals 2

    .line 387
    const-class v0, Ljava/lang/String;

    const-string v1, "NON_IAB_VENDORLIST"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    .line 394
    const-class v0, Ljava/lang/String;

    const-string v1, "NON_IAB_CONSENT_STATUS"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 2

    .line 402
    const-class v0, Ljava/lang/String;

    const-string v1, "NON_IAB_CMP_FLAVOR"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static v()Landroid/content/SharedPreferences;
    .locals 3

    .line 62
    sget-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.amazon.device.ads.dtb.preferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->b:Landroid/content/SharedPreferences;

    .line 65
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DtbSharedPreferences;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "amzn-dtb-oo"

    .line 145
    invoke-static {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "amzn-dtb-oo"

    .line 147
    invoke-static {v0, p1}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()Ljava/lang/Boolean;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "amzn-dtb-oo"

    .line 1368
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->v()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1369
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "amzn-dtb-oo"

    .line 141
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
