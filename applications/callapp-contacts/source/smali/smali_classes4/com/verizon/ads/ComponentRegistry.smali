.class public Lcom/verizon/ads/ComponentRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/ComponentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/verizon/ads/ComponentRegistry;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/ComponentRegistry;->a:Lcom/verizon/ads/Logger;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/verizon/ads/ComponentRegistry;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 49
    sget-object p0, Lcom/verizon/ads/ComponentRegistry;->a:Lcom/verizon/ads/Logger;

    const-string p1, "type cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 55
    sget-object v1, Lcom/verizon/ads/ComponentRegistry;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ComponentFactory;

    if-nez v1, :cond_1

    .line 58
    sget-object p1, Lcom/verizon/ads/ComponentRegistry;->a:Lcom/verizon/ads/Logger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const-string p0, "No ComponentFactory class registered for type <%s>"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lcom/verizon/ads/ComponentFactory;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p0

    return-object p0
.end method

.method public static registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V
    .locals 1

    if-nez p0, :cond_0

    .line 28
    sget-object p0, Lcom/verizon/ads/ComponentRegistry;->a:Lcom/verizon/ads/Logger;

    const-string p1, "type cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 34
    sget-object p0, Lcom/verizon/ads/ComponentRegistry;->a:Lcom/verizon/ads/Logger;

    const-string p1, "componentFactory cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 40
    sget-object v0, Lcom/verizon/ads/ComponentRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Lcom/verizon/ads/ComponentRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
