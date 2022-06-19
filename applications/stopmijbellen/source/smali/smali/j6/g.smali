.class public Lj6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f;


# instance fields
.field public final a:Lp9/f;

.field public final b:Lh6/b;

.field public final c:Ln6/e;

.field public final d:J


# direct methods
.method public constructor <init>(Lp9/f;Lm6/e;Ln6/e;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/g;->a:Lp9/f;

    .line 3
    new-instance p1, Lh6/b;

    invoke-direct {p1, p2}, Lh6/b;-><init>(Lm6/e;)V

    .line 4
    iput-object p1, p0, Lj6/g;->b:Lh6/b;

    .line 5
    iput-wide p4, p0, Lj6/g;->d:J

    .line 6
    iput-object p3, p0, Lj6/g;->c:Ln6/e;

    return-void
.end method


# virtual methods
.method public a(Lp9/e;Ljava/io/IOException;)V
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Lp9/x;

    .line 2
    iget-object v0, v0, Lp9/x;->e:Lp9/y;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lp9/y;->a:Lp9/s;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lj6/g;->b:Lh6/b;

    invoke-virtual {v1}, Lp9/s;->q()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 5
    :cond_0
    iget-object v0, v0, Lp9/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lj6/g;->b:Lh6/b;

    invoke-virtual {v1, v0}, Lh6/b;->c(Ljava/lang/String;)Lh6/b;

    .line 7
    :cond_1
    iget-object v0, p0, Lj6/g;->b:Lh6/b;

    iget-wide v1, p0, Lj6/g;->d:J

    invoke-virtual {v0, v1, v2}, Lh6/b;->g(J)Lh6/b;

    .line 8
    iget-object v0, p0, Lj6/g;->b:Lh6/b;

    iget-object v1, p0, Lj6/g;->c:Ln6/e;

    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 9
    iget-object v0, p0, Lj6/g;->b:Lh6/b;

    invoke-static {v0}, Lj6/h;->c(Lh6/b;)V

    .line 10
    iget-object v0, p0, Lj6/g;->a:Lp9/f;

    check-cast v0, Lj6/g;

    invoke-virtual {v0, p1, p2}, Lj6/g;->a(Lp9/e;Ljava/io/IOException;)V

    return-void
.end method

.method public b(Lp9/e;Lp9/b0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj6/g;->c:Ln6/e;

    invoke-virtual {v0}, Ln6/e;->a()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Lj6/g;->b:Lh6/b;

    iget-wide v3, p0, Lj6/g;->d:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lp9/b0;Lh6/b;JJ)V

    .line 3
    iget-object v0, p0, Lj6/g;->a:Lp9/f;

    check-cast v0, Lj6/g;

    invoke-virtual {v0, p1, p2}, Lj6/g;->b(Lp9/e;Lp9/b0;)V

    return-void
.end method
