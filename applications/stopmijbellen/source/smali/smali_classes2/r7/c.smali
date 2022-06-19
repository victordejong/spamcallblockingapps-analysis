.class public Lr7/c;
.super Lk7/r;
.source "SourceFile"


# instance fields
.field public h:J

.field public i:J

.field public j:Lk7/l;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lr7/c;->j:Lk7/l;

    .line 3
    iput-wide p1, p0, Lr7/c;->h:J

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 6

    .line 1
    iget v0, p2, Lk7/l;->c:I

    .line 2
    iget-wide v1, p0, Lr7/c;->h:J

    iget-wide v3, p0, Lr7/c;->i:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lr7/c;->j:Lk7/l;

    long-to-int v1, v0

    invoke-virtual {p2, v2, v1}, Lk7/l;->d(Lk7/l;I)V

    .line 4
    iget-object v0, p0, Lr7/c;->j:Lk7/l;

    .line 5
    iget v1, v0, Lk7/l;->c:I

    .line 6
    invoke-super {p0, p1, v0}, Lk7/r;->c(Lk7/m;Lk7/l;)V

    .line 7
    iget-wide v2, p0, Lr7/c;->i:J

    iget-object p1, p0, Lr7/c;->j:Lk7/l;

    .line 8
    iget v0, p1, Lk7/l;->c:I

    sub-int/2addr v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 9
    iput-wide v2, p0, Lr7/c;->i:J

    .line 10
    invoke-virtual {p1, p2, v0}, Lk7/l;->d(Lk7/l;I)V

    .line 11
    iget-wide p1, p0, Lr7/c;->i:J

    iget-wide v0, p0, Lr7/c;->h:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lr7/c;->n(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lr7/c;->i:J

    iget-wide v2, p0, Lr7/c;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;

    const-string v0, "End of data reached before content length was read: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lr7/c;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr7/c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk7/r;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method
