.class final Landroidx/media2/exoplayer/external/extractor/mp4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Landroidx/media2/exoplayer/external/util/p;

.field private final g:Landroidx/media2/exoplayer/external/util/p;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/util/p;Z)V
    .locals 0

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->g:Landroidx/media2/exoplayer/external/util/p;

    .line 1422
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 1423
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->e:Z

    const/16 p3, 0xc

    .line 1424
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1425
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a:I

    .line 1426
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1427
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->i:I

    .line 1428
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/a;->b(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1429
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1433
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1436
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v2

    goto :goto_0

    .line 1437
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->d:J

    .line 1438
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->h:I

    if-ne v0, v2, :cond_3

    .line 1439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->g:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->c:I

    .line 1440
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->g:Landroidx/media2/exoplayer/external/util/p;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1441
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->i:I

    if-lez v0, :cond_2

    .line 1442
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->g:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->h:I

    :cond_3
    return v1
.end method
