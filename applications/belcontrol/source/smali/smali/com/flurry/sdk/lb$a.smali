.class public final Lcom/flurry/sdk/lb$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lb;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/lb;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lb$a;->a:Lcom/flurry/sdk/lb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flurry/sdk/lb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/lb$a;-><init>(Lcom/flurry/sdk/lb;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/flurry/sdk/lb;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "HttpRequest timed out. Cancelling."

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/lb$a;->a:Lcom/flurry/sdk/lb;

    invoke-static {v0}, Lcom/flurry/sdk/lb;->a(Lcom/flurry/sdk/lb;)Lcom/flurry/sdk/lc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/flurry/sdk/lc;->n:J

    sub-long/2addr v2, v4

    sget-object v4, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Timeout ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "MS) for url: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x275

    iput v1, v0, Lcom/flurry/sdk/lc;->q:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/lc;->t:Z

    invoke-virtual {v0}, Lcom/flurry/sdk/lc;->e()V

    invoke-virtual {v0}, Lcom/flurry/sdk/lc;->f()V

    return-void
.end method
