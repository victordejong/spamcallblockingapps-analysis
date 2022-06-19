.class Lcom/unknownphone/callblocker/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 627
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const/4 v1, 0x0

    .line 631
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    .line 634
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 636
    :try_start_1
    new-instance v4, Lcom/unknownphone/callblocker/g/a;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/unknownphone/callblocker/g/a;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 634
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 632
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 640
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->j(Lcom/unknownphone/callblocker/activity/MainActivity;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 644
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->k(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "spam_numbers_last_update"

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "just_became_premium"

    .line 646
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "just_became_aware"

    .line 647
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "just_became_free"

    .line 648
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    :try_start_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    const v1, 0x7f090113

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    .line 652
    invoke-static {v2}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/h/a;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity$4;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v3}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/unknownphone/callblocker/h/a;

    .line 651
    invoke-virtual {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 656
    :cond_1
    :goto_3
    return-void

    .line 653
    :catch_1
    move-exception v0

    goto :goto_3

    .line 641
    :catch_2
    move-exception v0

    goto :goto_3

    .line 637
    :catch_3
    move-exception v4

    goto :goto_2
.end method
