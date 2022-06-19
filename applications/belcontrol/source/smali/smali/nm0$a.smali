.class public final Lnm0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm0;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnm0$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lnm0$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnm0$a;->a:Landroid/content/Context;

    const-string v1, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lnm0$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "FacebookSDK"

    invoke-static {v3, v1}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    iget-object v1, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lnm0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;

    move-result-object v2

    :cond_0
    iget-object v1, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lnm0;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lnm0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lnm0$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const/4 v0, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lmm0;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnm0;->c()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v0}, Lnm0;->d(Z)Z

    invoke-static {}, Lnm0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Llm0;->m(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lvk0;->d()V

    invoke-static {}, Lyk0;->h()V

    invoke-static {}, Lnm0;->g()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-static {}, Lnm0;->f()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lnm0$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lnm0$d;->c:Lnm0$d;

    goto :goto_1

    :cond_3
    sget-object v1, Lnm0$d;->d:Lnm0$d;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnm0;->h()V

    return-void
.end method
