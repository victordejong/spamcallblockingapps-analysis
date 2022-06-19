.class final Lcom/facebook/appevents/f/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/f/a;->a(Landroid/app/Activity;)V
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
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/facebook/appevents/f/a$4;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/f/a$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/f/a$4;->c:Landroid/content/Context;

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

    .line 188
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/facebook/appevents/f/g;

    iget-wide v2, p0, Lcom/facebook/appevents/f/a$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;

    .line 190
    iget-object v0, p0, Lcom/facebook/appevents/f/a$4;->b:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/f/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/f/a$4;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/f/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 192
    iget-wide v2, p0, Lcom/facebook/appevents/f/a$4;->a:J

    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 193
    invoke-static {}, Lcom/facebook/appevents/f/a;->j()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/facebook/appevents/f/a$4;->b:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v2

    invoke-static {}, Lcom/facebook/appevents/f/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/f/h;->a(Ljava/lang/String;Lcom/facebook/appevents/f/g;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/appevents/f/a$4;->b:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/f/a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/appevents/f/a$4;->c:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/f/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/facebook/appevents/f/g;

    iget-wide v2, p0, Lcom/facebook/appevents/f/a$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 200
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    .line 2109
    iget v1, v0, Lcom/facebook/appevents/f/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/facebook/appevents/f/g;->c:I

    .line 204
    :cond_3
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/f/a$4;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3101
    iput-object v1, v0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 205
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/f/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 206
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
