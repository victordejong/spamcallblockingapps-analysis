.class final Lcom/facebook/a/d/a$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/facebook/a/d/a$4;->a:J

    iput-object p3, p0, Lcom/facebook/a/d/a$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/a/d/a$4;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/facebook/a/d/i;

    iget-wide v2, p0, Lcom/facebook/a/d/a$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/d/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/a/d/a;->a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;

    .line 186
    iget-object v0, p0, Lcom/facebook/a/d/a$4;->b:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/facebook/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/d/a$4;->c:Landroid/content/Context;

    .line 186
    invoke-static {v0, v4, v1, v2}, Lcom/facebook/a/d/j;->a(Ljava/lang/String;Lcom/facebook/a/d/k;Ljava/lang/String;Landroid/content/Context;)V

    .line 212
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/a/d/a$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/a/d/i;->a(Ljava/lang/Long;)V

    .line 213
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/d/i;->j()V

    .line 214
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/d/i;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-wide v0, p0, Lcom/facebook/a/d/a$4;->a:J

    .line 193
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/d/i;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 194
    invoke-static {}, Lcom/facebook/a/d/a;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 197
    iget-object v0, p0, Lcom/facebook/a/d/a$4;->b:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v1

    .line 200
    invoke-static {}, Lcom/facebook/a/d/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v0, v1, v2}, Lcom/facebook/a/d/j;->a(Ljava/lang/String;Lcom/facebook/a/d/i;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/a/d/a$4;->b:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/facebook/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/d/a$4;->c:Landroid/content/Context;

    .line 201
    invoke-static {v0, v4, v1, v2}, Lcom/facebook/a/d/j;->a(Ljava/lang/String;Lcom/facebook/a/d/k;Ljava/lang/String;Landroid/content/Context;)V

    .line 206
    new-instance v0, Lcom/facebook/a/d/i;

    iget-wide v2, p0, Lcom/facebook/a/d/a$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/d/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/a/d/a;->a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;

    goto :goto_0

    .line 207
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/d/i;->e()V

    goto :goto_0
.end method
