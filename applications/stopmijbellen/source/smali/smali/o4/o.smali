.class public final Lo4/o;
.super Lo4/n;
.source "SourceFile"


# instance fields
.field public final a:Lo4/n;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lo4/n;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo4/n;-><init>()V

    iput-object p1, p0, Lo4/o;->a:Lo4/n;

    invoke-virtual {p0, p2, p3}, Lo4/o;->l(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo4/o;->b:J

    add-long/2addr p1, p4

    .line 2
    invoke-virtual {p0, p1, p2}, Lo4/o;->l(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo4/o;->c:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lo4/o;->c:J

    iget-wide v2, p0, Lo4/o;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final k(JJ)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Lo4/o;->b:J

    invoke-virtual {p0, p1, p2}, Lo4/o;->l(J)J

    move-result-wide p1

    add-long/2addr p3, p1

    .line 2
    invoke-virtual {p0, p3, p4}, Lo4/o;->l(J)J

    move-result-wide p3

    iget-object v0, p0, Lo4/o;->a:Lo4/n;

    sub-long/2addr p3, p1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lo4/n;->k(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final l(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    .line 1
    :cond_0
    iget-object v0, p0, Lo4/o;->a:Lo4/n;

    invoke-virtual {v0}, Lo4/n;->d()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object p1, p0, Lo4/o;->a:Lo4/n;

    .line 2
    invoke-virtual {p1}, Lo4/n;->d()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method
