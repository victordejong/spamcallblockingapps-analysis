.class public final Lcom/flurry/sdk/iu$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/la$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/la$a<",
        "[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iv;

.field public final synthetic b:Lcom/flurry/sdk/iw;

.field public final synthetic c:Lcom/flurry/sdk/iu;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iput-object p2, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iput-object p3, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/la;Ljava/lang/Object;)V
    .locals 8

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/iu;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v2, v2, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", HTTP status code is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/flurry/sdk/lc;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/flurry/sdk/lc;->q:I

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-wide v3, p1, Lcom/flurry/sdk/lc;->o:J

    long-to-int v4, v3

    if-gez v4, :cond_0

    iget-wide v3, v1, Lcom/flurry/sdk/iw;->k:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v5, v1, Lcom/flurry/sdk/iw;->k:J

    int-to-long v3, v4

    add-long/2addr v5, v3

    :goto_0
    iput-wide v5, v1, Lcom/flurry/sdk/iw;->k:J

    :cond_1
    iput v0, v1, Lcom/flurry/sdk/iw;->e:I

    invoke-virtual {p1}, Lcom/flurry/sdk/lc;->b()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p1, Lcom/flurry/sdk/lc;->p:Ljava/lang/Exception;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-boolean v5, p1, Lcom/flurry/sdk/lc;->t:Z

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    const-string v3, ". Exception: "

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/flurry/sdk/lc;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/flurry/sdk/iu;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout occured when trying to connect to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v1, v1, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/flurry/sdk/lc;->p:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/iu;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Manually managed http request timeout occured for: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v0, v0, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iget-object p2, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/iu;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error occured when trying to connect to: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v4, v4, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    invoke-static {p1, v0, v1, p2}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v1, 0xc8

    const/16 v3, 0x12c

    if-lt v0, v1, :cond_8

    if-ge v0, v3, :cond_8

    iget-object p1, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iget-object p2, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/iu;->b(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;)V

    return-void

    :cond_8
    if-lt v0, v3, :cond_9

    const/16 v1, 0x190

    if-ge v0, v1, :cond_9

    iget-object p2, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    invoke-static {p2, v0, v1, p1}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/la;)V

    return-void

    :cond_9
    invoke-static {}, Lcom/flurry/sdk/iu;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v1, v1, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v1, v1, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report failed sending to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    iget-object v1, v1, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/iu$2;->c:Lcom/flurry/sdk/iu;

    iget-object v0, p0, Lcom/flurry/sdk/iu$2;->b:Lcom/flurry/sdk/iw;

    iget-object v1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iv;

    invoke-static {p1, v0, v1, p2}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;Ljava/lang/String;)V

    return-void
.end method
