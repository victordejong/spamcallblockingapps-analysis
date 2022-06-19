.class final Landroidx/media2/exoplayer/external/extractor/mp4/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/extractor/q;

.field public final b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

.field public c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

.field public d:Landroidx/media2/exoplayer/external/extractor/mp4/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field final i:Landroidx/media2/exoplayer/external/util/p;

.field final j:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 1

    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    .line 1494
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/mp4/n;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/n;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 1495
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->i:Landroidx/media2/exoplayer/external/util/p;

    .line 1496
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->j:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a()V

    const/4 v0, 0x0

    .line 1516
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    .line 1517
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    .line 1518
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->f:I

    .line 1519
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->h:I

    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 1529
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide p1

    .line 1530
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    .line 1531
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 1532
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->b(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 1533
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1534
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 3

    .line 1507
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;->a:I

    .line 1508
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a(I)Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1510
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/Format;->copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/c;)V
    .locals 1

    .line 1500
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 1501
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->d:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    .line 1502
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 1503
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a()V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1549
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    .line 1550
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->f:I

    .line 1551
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->h:[I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 1552
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    const/4 v0, 0x0

    .line 1553
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->f:I

    return v0

    :cond_0
    return v1
.end method

.method final c()Landroidx/media2/exoplayer/external/extractor/mp4/m;
    .locals 2

    .line 1621
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/c;->a:I

    .line 1623
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->o:Landroidx/media2/exoplayer/external/extractor/mp4/m;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->o:Landroidx/media2/exoplayer/external/extractor/mp4/m;

    goto :goto_0

    .line 1625
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a(I)Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1626
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/m;->a:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
