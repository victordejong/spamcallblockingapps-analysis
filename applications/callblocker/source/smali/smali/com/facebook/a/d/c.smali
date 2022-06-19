.class public Lcom/facebook/a/d/c;
.super Ljava/lang/Object;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/d/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/d/c$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/a/d/c$1;

    invoke-direct {v0}, Lcom/facebook/a/d/c$1;-><init>()V

    sput-object v0, Lcom/facebook/a/d/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/facebook/a/d/c$a;Lcom/facebook/internal/a;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string/jumbo v1, "event"

    sget-object v2, Lcom/facebook/a/d/c;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-static {}, Lcom/facebook/a/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v2, "app_user_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/internal/x;->a(Lorg/json/JSONObject;Lcom/facebook/internal/a;Ljava/lang/String;Z)V

    .line 76
    :try_start_0
    invoke-static {v0, p4}, Lcom/facebook/internal/x;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const-string/jumbo v1, "application_package_name"

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    sget-object v2, Lcom/facebook/q;->e:Lcom/facebook/q;

    const-string/jumbo v3, "AppEvents"

    const-string/jumbo v4, "Fetching extended device info parameters failed: \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 81
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
