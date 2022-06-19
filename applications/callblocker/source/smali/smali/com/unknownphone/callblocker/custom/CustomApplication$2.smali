.class Lcom/unknownphone/callblocker/custom/CustomApplication$2;
.super Ljava/lang/Object;
.source "CustomApplication.java"

# interfaces
.implements Lcom/unknownphone/callblocker/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/custom/CustomApplication;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/custom/CustomApplication;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/custom/CustomApplication;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$2;->a:Lcom/unknownphone/callblocker/custom/CustomApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 97
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "api_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$2;->a:Lcom/unknownphone/callblocker/custom/CustomApplication;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Lcom/unknownphone/callblocker/custom/CustomApplication;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "api_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$2;->a:Lcom/unknownphone/callblocker/custom/CustomApplication;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Lcom/unknownphone/callblocker/custom/CustomApplication;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_launch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$2;->a:Lcom/unknownphone/callblocker/custom/CustomApplication;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->b(Lcom/unknownphone/callblocker/custom/CustomApplication;)V

    goto :goto_0
.end method
