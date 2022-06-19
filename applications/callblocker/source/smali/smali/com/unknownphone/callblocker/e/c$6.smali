.class Lcom/unknownphone/callblocker/e/c$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/unknownphone/callblocker/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->i(Lcom/unknownphone/callblocker/e/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "review_condition_sync"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_4

    .line 436
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 443
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 444
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 445
    const-string/jumbo v5, "phone_number"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    const-string/jumbo v6, "owner"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 447
    const-string/jumbo v6, "owner"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    :goto_2
    if-nez v5, :cond_2

    .line 443
    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 448
    goto :goto_2

    .line 450
    :cond_2
    if-eqz v2, :cond_0

    .line 451
    iget-object v6, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v6}, Lcom/unknownphone/callblocker/e/c;->j(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v6, Lcom/unknownphone/callblocker/e/c$b;

    invoke-direct {v6, v2, v5}, Lcom/unknownphone/callblocker/e/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 455
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->i(Lcom/unknownphone/callblocker/e/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "review_condition_sync"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    sget-object v1, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/c$c$a;)V

    .line 458
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0, v4}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)Ljava/util/List;

    .line 459
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$6;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->a()V

    .line 462
    :cond_4
    return-void
.end method
