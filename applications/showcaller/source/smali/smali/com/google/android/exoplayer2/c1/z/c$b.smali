.class final Lcom/google/android/exoplayer2/c1/z/c$b;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c1/z/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/c1/m$a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/l;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->a:Lcom/google/android/exoplayer2/util/l;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->b:I

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/c1/m$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/m$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->c:Lcom/google/android/exoplayer2/c1/m$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/c1/z/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c1/z/c$b;-><init>(Lcom/google/android/exoplayer2/util/l;I)V

    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/c1/i;)J
    .locals 7

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->a:Lcom/google/android/exoplayer2/util/l;

    iget v1, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->c:Lcom/google/android/exoplayer2/c1/m$a;

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c1/m;->h(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/c1/m$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->a:Lcom/google/android/exoplayer2/util/l;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/util/l;->j:J

    return-wide v0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->c:Lcom/google/android/exoplayer2/c1/m$a;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/c1/m$a;->a:J

    return-wide v0
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/c1/b;->a(Lcom/google/android/exoplayer2/c1/a$f;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/c1/i;J)Lcom/google/android/exoplayer2/c1/a$e;
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/c$b;->c(Lcom/google/android/exoplayer2/c1/i;)J

    move-result-wide v2

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v4

    .line 4
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/z/c$b;->a:Lcom/google/android/exoplayer2/util/l;

    iget v6, v6, Lcom/google/android/exoplayer2/util/l;->c:I

    const/4 v7, 0x6

    .line 5
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 6
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/c$b;->c(Lcom/google/android/exoplayer2/c1/i;)J

    move-result-wide v6

    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_0

    cmp-long p1, v6, p2

    if-lez p1, :cond_0

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/c1/a$e;->e(J)Lcom/google/android/exoplayer2/c1/a$e;

    move-result-object p1

    return-object p1

    :cond_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_1

    .line 10
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/c1/a$e;->f(JJ)Lcom/google/android/exoplayer2/c1/a$e;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/c1/a$e;->d(JJ)Lcom/google/android/exoplayer2/c1/a$e;

    move-result-object p1

    return-object p1
.end method
