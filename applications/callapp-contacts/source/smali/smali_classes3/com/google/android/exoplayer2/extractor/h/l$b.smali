.class final Lcom/google/android/exoplayer2/extractor/h/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/x;

.field b:Z

.field c:Z

.field d:Z

.field e:I

.field f:I

.field g:J

.field h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/x;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->c:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 454
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 456
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->d:Z

    .line 457
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->c:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 459
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/l$b;->f:I

    :cond_2
    return-void
.end method
