.class final Lcom/google/android/exoplayer2/extractor/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/b;
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

.field private final f:Lcom/google/android/exoplayer2/util/u;

.field private final g:Lcom/google/android/exoplayer2/util/u;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/util/u;Z)V
    .locals 0

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->g:Lcom/google/android/exoplayer2/util/u;

    .line 1656
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->f:Lcom/google/android/exoplayer2/util/u;

    .line 1657
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->e:Z

    const/16 p3, 0xc

    .line 1658
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1659
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->a:I

    .line 1660
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1661
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->i:I

    .line 1662
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1663
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1667
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1670
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v2

    goto :goto_0

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->d:J

    .line 1672
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->h:I

    if-ne v0, v2, :cond_3

    .line 1673
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->c:I

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->g:Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1675
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->i:I

    if-lez v0, :cond_2

    .line 1676
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$a;->h:I

    :cond_3
    return v1
.end method
