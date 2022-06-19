.class Lcom/unknownphone/callblocker/activity/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/facebook/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/facebook/login/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$3;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/facebook/n;)V
    .locals 5

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    const-string/jumbo v1, "email"

    const-string/jumbo v2, "email"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v1, "_action"

    const-string/jumbo v2, "_link_rss_to_api_key"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v1, "api_key"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$3;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->b(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "api_key"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v1, "fullname"

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$3;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->c(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Lcom/unknownphone/callblocker/d/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    goto :goto_0
.end method
