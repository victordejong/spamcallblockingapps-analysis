.class final Landroidx/media2/exoplayer/external/source/af$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Landroidx/media2/exoplayer/external/source/af;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/af;I)V
    .locals 0

    .line 889
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$e;->b:Landroidx/media2/exoplayer/external/source/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput p2, p0, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 7

    .line 911
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$e;->b:Landroidx/media2/exoplayer/external/source/af;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    .line 1486
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/af;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 1489
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->a(I)V

    .line 1490
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v2, v2, v1

    .line 1492
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    if-eqz v4, :cond_1

    .line 2257
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/aj;->e()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    .line 2316
    iget-object p1, v2, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/aj;->h()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 1495
    invoke-virtual {v2, p1, p2, v4}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    if-nez v3, :cond_3

    .line 1501
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->b(I)V

    :cond_3
    return v3
.end method

.method public final a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I
    .locals 11

    .line 906
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$e;->b:Landroidx/media2/exoplayer/external/source/af;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    .line 1472
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/af;->h()Z

    move-result v2

    const/4 v3, -0x3

    if-eqz v2, :cond_0

    return v3

    .line 1475
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->a(I)V

    .line 1476
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v4, v2, v1

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/source/af;->s:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 1477
    invoke-virtual/range {v4 .. v10}, Landroidx/media2/exoplayer/external/source/j;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;ZZJ)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 1480
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->b(I)V

    :cond_1
    return p1
.end method

.method public final a()Z
    .locals 3

    .line 895
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$e;->b:Landroidx/media2/exoplayer/external/source/af;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    .line 1455
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/af;->h()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$e;->b:Landroidx/media2/exoplayer/external/source/af;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    .line 1459
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/j;->b()V

    .line 1460
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/af;->g()V

    return-void
.end method
