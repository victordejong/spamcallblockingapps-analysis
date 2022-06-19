.class public abstract Lcom/google/api/client/googleapis/notifications/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/notifications/a;->a(J)Lcom/google/api/client/googleapis/notifications/a;

    .line 77
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/notifications/a;->a(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    .line 78
    invoke-virtual {p0, p4}, Lcom/google/api/client/googleapis/notifications/a;->b(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    .line 79
    invoke-virtual {p0, p5}, Lcom/google/api/client/googleapis/notifications/a;->c(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    .line 80
    invoke-virtual {p0, p6}, Lcom/google/api/client/googleapis/notifications/a;->d(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/notifications/a;)V
    .locals 7

    .line 1108
    iget-wide v1, p1, Lcom/google/api/client/googleapis/notifications/a;->a:J

    .line 1127
    iget-object v3, p1, Lcom/google/api/client/googleapis/notifications/a;->b:Ljava/lang/String;

    .line 1145
    iget-object v4, p1, Lcom/google/api/client/googleapis/notifications/a;->c:Ljava/lang/String;

    .line 1166
    iget-object v5, p1, Lcom/google/api/client/googleapis/notifications/a;->d:Ljava/lang/String;

    .line 1185
    iget-object v6, p1, Lcom/google/api/client/googleapis/notifications/a;->e:Ljava/lang/String;

    move-object v0, p0

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/notifications/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p1, Lcom/google/api/client/googleapis/notifications/a;->f:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/notifications/a;->e(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    .line 1224
    iget-object v0, p1, Lcom/google/api/client/googleapis/notifications/a;->g:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/notifications/a;->f(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    .line 1245
    iget-object p1, p1, Lcom/google/api/client/googleapis/notifications/a;->h:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/notifications/a;->g(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/api/client/a/y$a;
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/google/api/client/a/y;->a(Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/api/client/googleapis/notifications/a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "messageNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->b:Ljava/lang/String;

    const-string v2, "resourceState"

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->c:Ljava/lang/String;

    const-string v2, "resourceId"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->d:Ljava/lang/String;

    const-string v2, "resourceUri"

    .line 101
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->e:Ljava/lang/String;

    const-string v2, "channelId"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->f:Ljava/lang/String;

    const-string v2, "channelExpiration"

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->g:Ljava/lang/String;

    const-string v2, "channelToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/a;->h:Ljava/lang/String;

    const-string v2, "changed"

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/google/api/client/googleapis/notifications/a;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/a/aa;->a(Z)V

    .line 121
    iput-wide p1, p0, Lcom/google/api/client/googleapis/notifications/a;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 197
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/client/googleapis/notifications/a;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/a;->a()Lcom/google/api/client/a/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/a/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
