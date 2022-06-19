.class public Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/PEXHandler;


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/verizon/ads/PEXHandler$PEXHandlerListener;Lorg/json/JSONObject;)V
    .locals 9

    if-nez p3, :cond_0

    .line 45
    sget-object p1, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string p2, "arguments cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 51
    sget-object p1, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "No context provided.  Falling back to application context."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->b:Landroid/content/Context;

    :cond_1
    :try_start_0
    const-string v0, "uris"

    .line 57
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_b

    .line 62
    :try_start_1
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uri"

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    .line 65
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "internalBrowser"

    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "URI"

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 1179
    :try_start_2
    new-instance v2, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v2, p1}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    .line 1181
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo;->isCustomTabsSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-static {p1, v3}, Lcom/verizon/ads/support/utils/ActivityUtils;->startCustomTabActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    sget-object v2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Launched custom tab activity for uri = %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 74
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "customTabOpen"

    .line 77
    invoke-interface {p2, v3, v2}, Lcom/verizon/ads/PEXHandler$PEXHandlerListener;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 2128
    :cond_3
    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2129
    sget-object v2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v7, "Empty string passed for uri."

    invoke-virtual {v2, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 2135
    sget-object v2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v7, "context cannot be null"

    invoke-virtual {v2, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2167
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2169
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_7

    const/high16 v7, 0x10000000

    .line 2170
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3161
    :cond_7
    iget-object v7, p0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_8

    .line 2145
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2146
    sget-object v2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v7, "No component could be found to handle uri = %s"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2153
    :cond_8
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_a

    .line 82
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 83
    sget-object v2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Fired intent for uri = %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 86
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adLeftApplication"

    .line 89
    invoke-interface {p2, v3, v2}, Lcom/verizon/ads/PEXHandler$PEXHandlerListener;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 94
    :try_start_3
    sget-object v3, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v4, "An error occurred parsing a URI element."

    invoke-virtual {v3, v4, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_b
    sget-object p1, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string p2, "No uri could be used."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 100
    sget-object p2, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string p3, "An error occurred parsing the URI elements."

    invoke-virtual {p2, p3, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/PEXHandler$PEXPrepareListener;ZLorg/json/JSONObject;)V
    .locals 0

    if-nez p2, :cond_0

    .line 110
    sget-object p1, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string p2, "PEXPrepareListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-interface {p2, p1}, Lcom/verizon/ads/PEXHandler$PEXPrepareListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 122
    sget-object v0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;->a:Lcom/verizon/ads/Logger;

    const-string v1, "release called."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
