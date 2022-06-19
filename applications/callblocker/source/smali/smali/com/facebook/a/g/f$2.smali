.class Lcom/facebook/a/g/f$2;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/g/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/a/g/f;


# direct methods
.method constructor <init>(Lcom/facebook/a/g/f;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/a/g/f$2;->d:Lcom/facebook/a/g/f;

    iput-object p2, p0, Lcom/facebook/a/g/f$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/a/g/f$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/a/g/f$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/facebook/a/g/f$2;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/facebook/a/g/f$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/a/g/f$2;->d:Lcom/facebook/a/g/f;

    .line 143
    invoke-static {v3}, Lcom/facebook/a/g/f;->a(Lcom/facebook/a/g/f;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v2, v3, v0}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string/jumbo v2, "SUGGEST_EVENT"

    invoke-static {v2, v1, v0}, Lcom/facebook/a/e/b;->a(Ljava/lang/String;[FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/facebook/a/g/f$2;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/a/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v2, "other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/facebook/a/g/f$2;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/facebook/a/g/f;->a(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method
