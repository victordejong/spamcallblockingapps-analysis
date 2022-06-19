.class public Lcom/verizon/ads/support/WaterfallProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/verizon/ads/support/WaterfallProviderFactory;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/WaterfallProviderFactory;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/verizon/ads/WaterfallProvider;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    :try_start_0
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/verizon/ads/support/WaterfallProviderFactory;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Creating WaterfallProvider instance for class: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/verizon/ads/WaterfallProvider;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/WaterfallProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 53
    sget-object v0, Lcom/verizon/ads/support/WaterfallProviderFactory;->a:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Error creating WaterfallProvider instance for class: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/verizon/ads/WaterfallProvider;
    .locals 2

    const-string v0, "com.verizon.ads"

    const-string v1, "waterfallProviderClass"

    .line 33
    invoke-static {v0, v1, p1}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lcom/verizon/ads/support/WaterfallProviderFactory;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/verizon/ads/WaterfallProvider;

    move-result-object p0

    return-object p0
.end method
