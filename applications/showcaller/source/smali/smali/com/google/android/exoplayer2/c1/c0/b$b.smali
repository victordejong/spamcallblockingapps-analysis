.class final Lcom/google/android/exoplayer2/c1/c0/b$b;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c1/c0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c1/c0/b;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c1/c0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c1/c0/b;Lcom/google/android/exoplayer2/c1/c0/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/b$b;-><init>(Lcom/google/android/exoplayer2/c1/c0/b;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(J)Lcom/google/android/exoplayer2/c1/t$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/b;->d(Lcom/google/android/exoplayer2/c1/c0/b;)Lcom/google/android/exoplayer2/c1/c0/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/c0/i;->b(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/c1/c0/b;->e(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    .line 4
    invoke-static {v4}, Lcom/google/android/exoplayer2/c1/c0/b;->f(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v6}, Lcom/google/android/exoplayer2/c1/c0/b;->e(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v4}, Lcom/google/android/exoplayer2/c1/c0/b;->g(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/b;->e(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/b;->f(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/h0;->o(JJJ)J

    move-result-wide v0

    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/c1/t$a;

    new-instance v3, Lcom/google/android/exoplayer2/c1/u;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/c1/u;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/c1/t$a;-><init>(Lcom/google/android/exoplayer2/c1/u;)V

    return-object v2
.end method

.method public j()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/b;->d(Lcom/google/android/exoplayer2/c1/c0/b;)Lcom/google/android/exoplayer2/c1/c0/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/c0/b$b;->a:Lcom/google/android/exoplayer2/c1/c0/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/c1/c0/b;->g(Lcom/google/android/exoplayer2/c1/c0/b;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c1/c0/i;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
