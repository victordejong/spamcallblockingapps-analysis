.class final Lcom/google/android/exoplayer2/extractor/h/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Lcom/google/android/exoplayer2/util/ad;

.field final c:Lcom/google/android/exoplayer2/util/u;

.field d:Z

.field e:Z

.field f:Z

.field g:J

.field h:J

.field i:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->a:I

    .line 55
    new-instance p1, Lcom/google/android/exoplayer2/util/ad;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->b:Lcom/google/android/exoplayer2/util/ad;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->g:J

    .line 57
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->h:J

    .line 58
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->i:J

    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->f:[B

    .line 1088
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/ab;->d:Z

    .line 122
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    const/4 p1, 0x0

    return p1
.end method
