.class public Lcom/facebook/devicerequests/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.devicerequests.a.a"

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/devicerequests/a/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 75
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "device"

    .line 77
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 78
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/devicerequests/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {p0}, Lcom/facebook/devicerequests/a/a;->d(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v2

    :catchall_0
    move-exception p0

    .line 90
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 106
    :cond_0
    :try_start_0
    new-instance v8, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/c;

    invoke-direct {v8, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 107
    sget-object v1, Lcom/google/zxing/c;->MARGIN:Lcom/google/zxing/c;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    new-instance v3, Lcom/google/zxing/d;

    invoke-direct {v3}, Lcom/google/zxing/d;-><init>()V

    sget-object v5, Lcom/google/zxing/a;->QR_CODE:Lcom/google/zxing/a;

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    move-object v4, p0

    .line 110
    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/d;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object p0

    .line 1406
    iget v10, p0, Lcom/google/zxing/common/b;->b:I

    .line 2399
    iget v9, p0, Lcom/google/zxing/common/b;->a:I

    mul-int v1, v10, v9

    .line 114
    new-array v4, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_3

    mul-int v5, v3, v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_2

    add-int v7, v5, v6

    .line 119
    invoke-virtual {p0, v6, v3}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_1
    const/4 v8, -0x1

    :goto_2
    aput v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v6, v9

    .line 124
    :try_start_2
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-object v2, p0

    :catch_1
    move-object p0, v2

    :goto_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 130
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static b()Z
    .locals 5

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/q;->a(Ljava/lang/String;)Lcom/facebook/internal/p;

    move-result-object v1

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-eqz v1, :cond_1

    .line 1038
    iget-object v1, v1, Lcom/facebook/internal/p;->c:Ljava/util/EnumSet;

    .line 101
    sget-object v3, Lcom/facebook/internal/ad;->Enabled:Lcom/facebook/internal/ad;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2

    :catchall_0
    move-exception v1

    .line 99
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 134
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 3201
    :try_start_1
    sget-object v1, Lcom/facebook/devicerequests/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    if-eqz v1, :cond_1

    .line 3204
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v2

    const-string v3, "servicediscovery"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3207
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3209
    :try_start_3
    sget-object v2, Lcom/facebook/devicerequests/a/a;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3212
    :goto_0
    sget-object v1, Lcom/facebook/devicerequests/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 3214
    :try_start_4
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    .line 135
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/facebook/devicerequests/a/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 139
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/devicerequests/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 144
    :cond_1
    invoke-static {}, Lcom/facebook/g;->k()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    const/16 v5, 0x7c

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%s_%s_%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "fbsdk"

    aput-object v6, v5, v2

    const-string v6, "%s-%s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "android"

    aput-object v9, v8, v2

    aput-object v1, v8, v3

    .line 154
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object p0, v5, v7

    .line 148
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v4}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    const-string v5, "_fb._tcp."

    .line 162
    invoke-virtual {v4, v5}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const/16 v5, 0x50

    .line 164
    invoke-virtual {v4, v5}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 167
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v5

    const-string v6, "servicediscovery"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/nsd/NsdManager;

    .line 169
    new-instance v6, Lcom/facebook/devicerequests/a/a$1;

    invoke-direct {v6, v1, p0}, Lcom/facebook/devicerequests/a/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v1, Lcom/facebook/devicerequests/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v5, v4, v3, v6}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    .line 196
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
