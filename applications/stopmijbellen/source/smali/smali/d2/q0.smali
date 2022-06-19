.class public Ld2/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/q0;->d:Ld2/k0;

    iput-object p2, p0, Ld2/q0;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/q0;->b:Ljava/lang/String;

    iput-wide p4, p0, Ld2/q0;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/q0;->d:Ld2/k0;

    .line 2
    iget-object v0, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Ld2/q0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Ld2/q0;->d:Ld2/k0;

    .line 5
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iget-object v1, p0, Ld2/q0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Ld2/q;->a:Landroid/support/v4/media/a;

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Ld2/q0;->b:Ljava/lang/String;

    invoke-static {v1}, Ld2/b;->a(Ljava/lang/String;)Ld2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->G(Ld2/s;)V

    .line 9
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 10
    iget-object v1, p0, Ld2/q0;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    iget-object v1, p0, Ld2/q0;->b:Ljava/lang/String;

    const-string v2, "zone_id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    const-string v2, "type"

    .line 12
    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const/16 v2, 0x1a

    const-string v3, "request_fail_reason"

    .line 13
    invoke-static {v0, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 14
    new-instance v2, Ld2/t0;

    const/4 v3, 0x1

    const-string v4, "AdSession.on_request_failure"

    invoke-direct {v2, v4, v3, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestNotFilled called due to a native timeout. "

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Timeout set to: "

    .line 17
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    .line 19
    iget-wide v4, v4, Ld2/f1;->T:J

    .line 20
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interstitial request time allowed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ld2/q0;->c:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interstitial with adSessionId("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ld2/q0;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - request failed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v1, v1, v0, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method
