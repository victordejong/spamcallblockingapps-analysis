.class final Landroidx/media2/exoplayer/external/extractor/e/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Z

.field c:I

.field d:J

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:J

.field k:J

.field l:Z

.field private final m:Landroidx/media2/exoplayer/external/extractor/q;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->m:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 7

    .line 493
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->l:Z

    .line 494
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->j:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->m:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->k:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    return-void
.end method

.method public final a([BII)V
    .locals 2

    .line 462
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->e:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    .line 463
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->c:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 465
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->f:Z

    .line 466
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->e:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 468
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->c:I

    :cond_2
    return-void
.end method
