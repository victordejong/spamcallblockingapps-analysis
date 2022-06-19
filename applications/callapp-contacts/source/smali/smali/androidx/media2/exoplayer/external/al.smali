.class public abstract Landroidx/media2/exoplayer/external/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/al$a;,
        Landroidx/media2/exoplayer/external/al$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 520
    new-instance v0, Landroidx/media2/exoplayer/external/al$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 584
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/al;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 585
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/al;->b(Z)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p1, v0

    return p1

    .line 587
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 579
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/al;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)I
    .locals 3

    const/4 v0, 0x0

    .line 1795
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p2

    .line 696
    iget p2, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    const-wide/16 v0, 0x0

    .line 2648
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v2

    .line 697
    iget v2, v2, Landroidx/media2/exoplayer/external/al$b;->h:I

    if-ne v2, p1, :cond_1

    .line 698
    invoke-virtual {p0, p2, p4, p5}, Landroidx/media2/exoplayer/external/al;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 3648
    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    .line 702
    iget p1, p1, Landroidx/media2/exoplayer/external/al$b;->g:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract a(Ljava/lang/Object;)I
.end method

.method public a(Z)I
    .locals 0

    .line 625
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/al$b;",
            "Landroidx/media2/exoplayer/external/al$a;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 731
    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 730
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/al$b;",
            "Landroidx/media2/exoplayer/external/al$a;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/util/a;->a(II)I

    .line 757
    invoke-virtual {p0, p3, p1, p6, p7}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 4228
    iget-wide p4, p1, Landroidx/media2/exoplayer/external/al$b;->i:J

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 764
    :cond_0
    iget p3, p1, Landroidx/media2/exoplayer/external/al$b;->g:I

    .line 4258
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/al$b;->k:J

    add-long/2addr v0, p4

    const/4 p4, 0x1

    .line 766
    invoke-virtual {p0, p3, p2, p4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p5

    .line 4373
    iget-wide v2, p5, Landroidx/media2/exoplayer/external/al$a;->d:J

    :goto_0
    cmp-long p5, v2, p6

    if-eqz p5, :cond_1

    cmp-long p5, v0, v2

    if-ltz p5, :cond_1

    .line 767
    iget p5, p1, Landroidx/media2/exoplayer/external/al$b;->h:I

    if-ge p3, p5, :cond_1

    sub-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    .line 770
    invoke-virtual {p0, p3, p2, p4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p5

    .line 5373
    iget-wide v2, p5, Landroidx/media2/exoplayer/external/al$a;->d:J

    goto :goto_0

    .line 772
    :cond_1
    iget-object p1, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
.end method

.method public a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;
    .locals 1

    .line 783
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 0

    .line 668
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/al;->b(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final a()Z
    .locals 1

    .line 558
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method public b(Z)I
    .locals 0

    .line 637
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)Z
    .locals 0

    .line 720
    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c()I
.end method
