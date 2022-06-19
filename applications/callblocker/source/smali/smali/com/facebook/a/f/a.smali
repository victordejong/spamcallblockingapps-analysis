.class public final Lcom/facebook/a/f/a;
.super Ljava/lang/Object;
.source "AddressFilterManager.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/facebook/a/f/a;->a:Z

    .line 39
    sput-boolean v0, Lcom/facebook/a/f/a;->b:Z

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/f/a;->a:Z

    .line 43
    const-string/jumbo v0, "FBSDKFeatureAddressDetectionSample"

    .line 45
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/a/f/a;->b:Z

    .line 46
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    sget-boolean v0, Lcom/facebook/a/f/a;->a:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    invoke-static {v1}, Lcom/facebook/a/f/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-boolean v4, Lcom/facebook/a/f/a;->b:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "_onDeviceParams"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 71
    const/16 v0, 0x1e

    new-array v0, v0, [F

    .line 72
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 73
    const-string/jumbo v1, "DATA_DETECTION_ADDRESS"

    invoke-static {v1, v0, p0}, Lcom/facebook/a/e/b;->a(Ljava/lang/String;[FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    const-string/jumbo v1, "SHOULD_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
