.class final Lcom/facebook/appevents/j/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/appevents/j/f;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/j/f;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/facebook/appevents/j/f$2;->d:Lcom/facebook/appevents/j/f;

    iput-object p2, p0, Lcom/facebook/appevents/j/f$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/appevents/j/f$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/j/f$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/facebook/appevents/j/f$2;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/appevents/j/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/facebook/appevents/j/f$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/appevents/j/f$2;->d:Lcom/facebook/appevents/j/f;

    .line 145
    invoke-static {v3}, Lcom/facebook/appevents/j/f;->a(Lcom/facebook/appevents/j/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/appevents/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    return-void

    .line 150
    :cond_1
    sget-object v2, Lcom/facebook/appevents/g/c$a;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/g/c$a;

    const/4 v3, 0x1

    new-array v4, v3, [[F

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    .line 151
    invoke-static {v2, v4, v3}, Lcom/facebook/appevents/g/c;->a(Lcom/facebook/appevents/g/c$a;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 159
    :cond_2
    aget-object v0, v0, v5

    .line 160
    iget-object v2, p0, Lcom/facebook/appevents/j/f$2;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/appevents/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "other"

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/facebook/appevents/j/f$2;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/facebook/appevents/j/f;->a(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 167
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method
