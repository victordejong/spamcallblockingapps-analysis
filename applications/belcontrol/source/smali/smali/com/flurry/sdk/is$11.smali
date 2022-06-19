.class public final Lcom/flurry/sdk/is$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/la$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/is;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/la$a<",
        "[B[B>;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lcom/flurry/sdk/is;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/is;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    iput-wide p2, p0, Lcom/flurry/sdk/is$11;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/is$11;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/la;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, [B

    iget v0, p1, Lcom/flurry/sdk/lc;->q:I

    invoke-static {}, Lcom/flurry/sdk/is;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton config request: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    const/16 v4, 0x190

    if-eq v0, v4, :cond_6

    const/16 v4, 0x196

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19f

    if-ne v0, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/lc;->b()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    new-instance v6, Lcom/flurry/sdk/is$11$1;

    invoke-direct {v6, p0, p2}, Lcom/flurry/sdk/is$11$1;-><init>(Lcom/flurry/sdk/is$11;[B)V

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {v4}, Lcom/flurry/sdk/is;->d(Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ky;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flurry/sdk/ky;->b([B)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flurry/sdk/if;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v4, 0x5

    invoke-static {}, Lcom/flurry/sdk/is;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode proton config response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v6, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v5

    :goto_0
    invoke-static {p2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/if;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    if-eqz v5, :cond_3

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;J)J

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    iget-wide v1, p0, Lcom/flurry/sdk/is$11;->a:J

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/is;->b(Lcom/flurry/sdk/is;J)J

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    iget-boolean v1, p0, Lcom/flurry/sdk/is$11;->b:Z

    invoke-static {p2, v1}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;Z)Z

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2, v5}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;Lcom/flurry/sdk/if;)Lcom/flurry/sdk/if;

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->e(Lcom/flurry/sdk/is;)V

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->f(Lcom/flurry/sdk/is;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->g(Lcom/flurry/sdk/is;)Z

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    const-string v1, "flurry.session_start"

    invoke-static {p2, v1}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->h(Lcom/flurry/sdk/is;)V

    :cond_3
    if-nez v5, :cond_5

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->i(Lcom/flurry/sdk/is;)J

    move-result-wide v1

    const/4 p2, 0x1

    shl-long/2addr v1, p2

    const/16 p2, 0x1ad

    if-ne v0, p2, :cond_4

    const-string p2, "Retry-After"

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/is;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Server returned retry time: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v0, 0x3e8

    mul-long v1, p1, v0

    goto :goto_2

    :catch_1
    invoke-static {}, Lcom/flurry/sdk/is;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Server returned nonsensical retry time"

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;J)J

    invoke-static {}, Lcom/flurry/sdk/is;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Proton config request failed, backing off: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {v0}, Lcom/flurry/sdk/is;->i(Lcom/flurry/sdk/is;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    iget-object p2, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p2}, Lcom/flurry/sdk/is;->j(Lcom/flurry/sdk/is;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {v0}, Lcom/flurry/sdk/is;->i(Lcom/flurry/sdk/is;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Runnable;J)V

    :cond_5
    return-void

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;J)J

    return-void
.end method
