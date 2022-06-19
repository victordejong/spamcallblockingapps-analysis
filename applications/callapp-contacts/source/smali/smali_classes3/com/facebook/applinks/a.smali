.class public Lcom/facebook/applinks/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "com.facebook.applinks.a"


# instance fields
.field public a:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Landroid/os/Bundle;

.field private f:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 387
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 393
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/applinks/a;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 394
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 395
    check-cast v3, Lorg/json/JSONArray;

    .line 396
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    new-array v3, v5, [Ljava/lang/String;

    .line 397
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 400
    instance-of v6, v4, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 401
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    .line 402
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 403
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/applinks/a;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    :cond_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 406
    :cond_3
    instance-of v4, v4, Lorg/json/JSONArray;

    if-nez v4, :cond_5

    .line 410
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 411
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 412
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 414
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Nested arrays are not supported."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/applinks/a;
    .locals 11

    const-string v0, "promo_code"

    const-string v1, "deeplink_context"

    const-string v2, "extras"

    const-string v3, "fb_ref"

    const-string v4, "target_url"

    const-string v5, "referer_data"

    const-string v6, "ref"

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return-object v7

    .line 322
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 323
    invoke-virtual {v8, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v9, "bridge_args"

    .line 325
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "method"

    .line 326
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "applink"

    .line 327
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "2"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 329
    new-instance p0, Lcom/facebook/applinks/a;

    invoke-direct {p0}, Lcom/facebook/applinks/a;-><init>()V

    const-string v9, "method_args"

    .line 331
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 334
    iget-object v3, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/a;->c:Ljava/lang/String;

    goto :goto_0

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 338
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 339
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/a;->c:Ljava/lang/String;

    .line 343
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    .line 345
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/a;->a:Landroid/net/Uri;

    .line 346
    invoke-static {v3}, Lcom/facebook/applinks/a;->a(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/a;->g:Lorg/json/JSONObject;

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 351
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 354
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/a;->f:Ljava/lang/String;

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/applinks/a;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/a;->e:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 366
    :catch_0
    sget-object p0, Lcom/facebook/applinks/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/internal/ae;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :catch_1
    sget-object p0, Lcom/facebook/applinks/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/internal/ae;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object v7
.end method

.method private static a(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 3

    const-class v0, Lcom/facebook/applinks/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v1, "al_applink_data"

    .line 431
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    return-object v2

    .line 436
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catch_0
    return-object v2

    :catchall_0
    move-exception p0

    .line 440
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/applinks/a$a;)V
    .locals 3

    const-string v0, "context"

    .line 1127
    invoke-static {p0, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    .line 1128
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applicationId"

    .line 1134
    invoke-static {v0, v1}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1138
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/applinks/a$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/applinks/a$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/a$a;)V

    .line 1139
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/a$a;)V
    .locals 7

    .line 1152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    const-string v2, "DEFERRED_APP_LINK"

    .line 1154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    invoke-static {p0}, Lcom/facebook/internal/b;->b(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object v1

    .line 1158
    invoke-static {p0}, Lcom/facebook/appevents/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-static {p0}, Lcom/facebook/g;->b(Landroid/content/Context;)Z

    move-result v3

    .line 1155
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ae;->a(Lorg/json/JSONObject;Lcom/facebook/internal/b;Ljava/lang/String;Z)V

    .line 1161
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 1160
    invoke-static {v0, v1}, Lcom/facebook/internal/ae;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v1, "application_package_name"

    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "%s/activities"

    .line 1167
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1172
    :try_start_1
    invoke-static {p1, p0, v0, p1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 1962
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object p0

    .line 2121
    iget-object p0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz p0, :cond_5

    const-string v0, "applink_args"

    .line 1176
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_time"

    const-wide/16 v2, -0x1

    .line 1177
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "applink_class"

    .line 1178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "applink_url"

    .line 1179
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1182
    invoke-static {v0}, Lcom/facebook/applinks/a;->a(Ljava/lang/String;)Lcom/facebook/applinks/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p1, :cond_5

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1186
    :try_start_2
    iget-object v0, p1, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    if-eqz v0, :cond_0

    .line 1187
    :try_start_3
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1189
    :cond_0
    iget-object v0, p1, Lcom/facebook/applinks/a;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1191
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1190
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1194
    :catch_0
    :try_start_4
    invoke-static {}, Lcom/facebook/internal/ae;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 1200
    :try_start_5
    iget-object v0, p1, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    if-eqz v0, :cond_2

    .line 1201
    :try_start_6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    :cond_2
    iget-object v0, p1, Lcom/facebook/applinks/a;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1204
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1208
    :catch_1
    :try_start_7
    invoke-static {}, Lcom/facebook/internal/ae;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_1
    if-eqz p0, :cond_5

    .line 1214
    :try_start_8
    iget-object v0, p1, Lcom/facebook/applinks/a;->d:Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    if-eqz v0, :cond_4

    .line 1215
    :try_start_9
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    :cond_4
    iget-object v0, p1, Lcom/facebook/applinks/a;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 1218
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 1221
    :catch_2
    :try_start_a
    invoke-static {}, Lcom/facebook/internal/ae;->a()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 1228
    :catch_3
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 1231
    :cond_5
    :goto_2
    invoke-interface {p2, p1}, Lcom/facebook/applinks/a$a;->a(Lcom/facebook/applinks/a;)V

    return-void

    :catch_4
    move-exception p0

    .line 1164
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "An error occurred while preparing deferred app link"

    invoke-direct {p1, p2, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
