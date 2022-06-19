.class final Landroidx/media2/exoplayer/external/extractor/b/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:[B

.field b:Z

.field c:I

.field d:I

.field e:J

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1718
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/b/d$b;J)V
    .locals 9

    .line 1745
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 1748
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    if-nez v0, :cond_1

    .line 1750
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->e:J

    :cond_1
    const/16 p2, 0x10

    if-ge v1, p2, :cond_2

    return-void

    .line 1756
    :cond_2
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->e:J

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->f:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->d:I

    const/4 v7, 0x0

    iget-object v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    const/4 p1, 0x0

    .line 1757
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    return-void
.end method
