.class public Ld2/p0;
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
    iput-object p1, p0, Ld2/p0;->d:Ld2/k0;

    iput-object p2, p0, Ld2/p0;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/p0;->b:Ljava/lang/String;

    iput-wide p4, p0, Ld2/p0;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/p0;->d:Ld2/k0;

    .line 2
    iget-object v0, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Ld2/p0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Ld2/p0;->d:Ld2/k0;

    .line 5
    iget-object v0, v0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iget-object v1, p0, Ld2/p0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/k;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Ld2/p0;->b:Ljava/lang/String;

    invoke-static {v1}, Ld2/b;->a(Ljava/lang/String;)Ld2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld2/k;->f(Ld2/s;)V

    .line 8
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 9
    iget-object v1, p0, Ld2/p0;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    iget-object v1, p0, Ld2/p0;->b:Ljava/lang/String;

    const-string v2, "zone_id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    const-string v2, "type"

    .line 11
    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const/16 v2, 0x1a

    const-string v3, "request_fail_reason"

    .line 12
    invoke-static {v0, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 13
    new-instance v2, Ld2/t0;

    const-string v3, "AdSession.on_request_failure"

    invoke-direct {v2, v3, v1, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestNotFilled called due to a native timeout. "

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Timeout set to: "

    .line 16
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    .line 18
    iget-wide v3, v3, Ld2/f1;->T:J

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView request time allowed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ld2/p0;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView with adSessionId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld2/p0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") - request failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 26
    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
