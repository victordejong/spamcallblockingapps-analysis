.class public Lr9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/y;


# instance fields
.field public a:Z

.field public final synthetic b:Laa/h;

.field public final synthetic c:Lr9/c;

.field public final synthetic d:Laa/g;


# direct methods
.method public constructor <init>(Lr9/b;Laa/h;Lr9/c;Laa/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lr9/a;->b:Laa/h;

    iput-object p3, p0, Lr9/a;->c:Lr9/c;

    iput-object p4, p0, Lr9/a;->d:Laa/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/a;->b:Laa/h;

    invoke-interface {v0}, Laa/y;->b()Laa/z;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr9/a;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lq9/c;->j(Laa/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lr9/a;->a:Z

    .line 4
    iget-object v0, p0, Lr9/a;->c:Lr9/c;

    check-cast v0, Lp9/c$b;

    invoke-virtual {v0}, Lp9/c$b;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lr9/a;->b:Laa/h;

    invoke-interface {v0}, Laa/y;->close()V

    return-void
.end method

.method public f(Laa/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lr9/a;->b:Laa/h;

    invoke-interface {v1, p1, p2, p3}, Laa/y;->f(Laa/f;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lr9/a;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lr9/a;->a:Z

    .line 4
    iget-object p1, p0, Lr9/a;->d:Laa/g;

    invoke-interface {p1}, Laa/x;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lr9/a;->d:Laa/g;

    invoke-interface {v0}, Laa/g;->a()Laa/f;

    move-result-object v3

    .line 6
    iget-wide v0, p1, Laa/f;->b:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v2 .. v7}, Laa/f;->k(Laa/f;JJ)Laa/f;

    .line 8
    iget-object p1, p0, Lr9/a;->d:Laa/g;

    invoke-interface {p1}, Laa/g;->F()Laa/g;

    return-wide p2

    :catch_0
    move-exception p1

    .line 9
    iget-boolean p2, p0, Lr9/a;->a:Z

    if-nez p2, :cond_2

    .line 10
    iput-boolean v0, p0, Lr9/a;->a:Z

    .line 11
    iget-object p2, p0, Lr9/a;->c:Lr9/c;

    check-cast p2, Lp9/c$b;

    invoke-virtual {p2}, Lp9/c$b;->a()V

    .line 12
    :cond_2
    throw p1
.end method
