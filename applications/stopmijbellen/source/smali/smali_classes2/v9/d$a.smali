.class public Lv9/d$a;
.super Laa/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:J

.field public final synthetic d:Lv9/d;


# direct methods
.method public constructor <init>(Lv9/d;Laa/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/d$a;->d:Lv9/d;

    .line 2
    invoke-direct {p0, p2}, Laa/k;-><init>(Laa/y;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lv9/d$a;->b:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lv9/d$a;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Laa/k;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lv9/d$a;->d(Ljava/io/IOException;)V

    return-void
.end method

.method public final d(Ljava/io/IOException;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lv9/d$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv9/d$a;->b:Z

    .line 3
    iget-object v3, p0, Lv9/d$a;->d:Lv9/d;

    iget-object v1, v3, Lv9/d;->b:Ls9/e;

    const/4 v2, 0x0

    iget-wide v4, p0, Lv9/d$a;->c:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ls9/e;->i(ZLt9/c;JLjava/io/IOException;)V

    return-void
.end method

.method public f(Laa/f;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Laa/k;->a:Laa/y;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Laa/y;->f(Laa/f;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 3
    iget-wide v0, p0, Lv9/d$a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lv9/d$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Lv9/d$a;->d(Ljava/io/IOException;)V

    .line 5
    throw p1
.end method
