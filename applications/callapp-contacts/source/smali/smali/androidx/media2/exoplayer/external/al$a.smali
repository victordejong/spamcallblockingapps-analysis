.class public final Landroidx/media2/exoplayer/external/al$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field f:Landroidx/media2/exoplayer/external/source/ads/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    sget-object v0, Landroidx/media2/exoplayer/external/source/ads/a;->a:Landroidx/media2/exoplayer/external/source/ads/a;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    .line 436
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/ads/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(J)I
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/ads/a;->a(J)I

    move-result p1

    return p1
.end method

.method public final a(I)J
    .locals 3

    .line 410
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media2/exoplayer/external/source/ads/a;)Landroidx/media2/exoplayer/external/al$a;
    .locals 0

    .line 353
    iput-object p1, p0, Landroidx/media2/exoplayer/external/al$a;->a:Ljava/lang/Object;

    .line 354
    iput-object p2, p0, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    .line 355
    iput p3, p0, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 356
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/al$a;->d:J

    .line 357
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/al$a;->e:J

    .line 358
    iput-object p8, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/al$a;
    .locals 9

    .line 326
    sget-object v8, Landroidx/media2/exoplayer/external/source/ads/a;->a:Landroidx/media2/exoplayer/external/source/ads/a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v8}, Landroidx/media2/exoplayer/external/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media2/exoplayer/external/source/ads/a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object p1, v0, p1

    const/4 v0, -0x1

    .line 1086
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/ads/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final b(J)I
    .locals 3

    .line 469
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/al$a;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/source/ads/a;->a(JJ)I

    move-result p1

    return p1
.end method

.method public final b(II)Z
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object p1, v0, p1

    .line 492
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)I
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object p1, v0, p1

    iget p1, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    return p1
.end method

.method public final c(II)J
    .locals 2

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object p1, v0, p1

    .line 506
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->d:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method
