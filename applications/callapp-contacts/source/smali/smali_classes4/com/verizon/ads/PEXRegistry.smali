.class public final Lcom/verizon/ads/PEXRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/PEXFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/verizon/ads/PEXRegistry;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/verizon/ads/PEXRegistry;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;
    .locals 4

    .line 71
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    sget-object p0, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    const-string v0, "contentType cannot be null or empty."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v2, Lcom/verizon/ads/PEXRegistry;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/PEXFactory;

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "No factory is registered for type <%s>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 86
    :cond_1
    invoke-interface {v0}, Lcom/verizon/ads/PEXFactory;->getHandler()Lcom/verizon/ads/PEXHandler;

    move-result-object p0

    return-object p0
.end method

.method public static registerPEX(Ljava/lang/String;Lcom/verizon/ads/PEXFactory;)Z
    .locals 5

    .line 38
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    const-string p1, "contentType cannot be null or empty."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 45
    sget-object p0, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    const-string p1, "PEXFactory instance cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v2, Lcom/verizon/ads/PEXRegistry;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 52
    sget-object p1, Lcom/verizon/ads/PEXRegistry;->b:Lcom/verizon/ads/Logger;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "A registration already exists for type <%s>"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return v1

    .line 57
    :cond_2
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method
