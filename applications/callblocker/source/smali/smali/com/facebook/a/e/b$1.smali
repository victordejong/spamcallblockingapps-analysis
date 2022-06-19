.class final Lcom/facebook/a/e/b$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Lcom/facebook/a/e/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/facebook/a/e/b;->e()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "models"

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :goto_0
    invoke-static {v0}, Lcom/facebook/a/e/b;->a(Lorg/json/JSONObject;)V

    .line 91
    invoke-static {}, Lcom/facebook/a/e/b;->f()V

    .line 92
    invoke-static {}, Lcom/facebook/a/e/b;->c()V

    .line 96
    :goto_1
    return-void

    .line 87
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/facebook/a/e/b;->e()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "models"

    const-string/jumbo v3, ""

    .line 88
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_1
.end method
