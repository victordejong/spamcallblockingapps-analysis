.class final Lcom/google/android/exoplayer2/extractor/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/p;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/extractor/m$a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/p;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    .line 72
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->b:I

    .line 73
    new-instance p1, Lcom/google/android/exoplayer2/extractor/m$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->c:Lcom/google/android/exoplayer2/extractor/m$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/b/a$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/b/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/p;I)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/i;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->c:Lcom/google/android/exoplayer2/extractor/m$a;

    .line 118
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 124
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/p;->j:J

    return-wide v0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->c:Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/m$a;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;J)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/b/a$a;->a(Lcom/google/android/exoplayer2/extractor/i;)J

    move-result-wide v2

    .line 83
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v4

    .line 85
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/b/a$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/p;->c:I

    const/4 v7, 0x6

    .line 86
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 85
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/b/a$a;->a(Lcom/google/android/exoplayer2/extractor/i;)J

    move-result-wide v6

    .line 90
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_0

    cmp-long p1, v6, p2

    if-lez p1, :cond_0

    .line 94
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/a$e;->a(J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object p1

    return-object p1

    :cond_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_1

    .line 96
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/extractor/a$e;->b(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/a$e;->a(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/a$f$-CC;->$default$a(Lcom/google/android/exoplayer2/extractor/a$f;)V

    return-void
.end method
