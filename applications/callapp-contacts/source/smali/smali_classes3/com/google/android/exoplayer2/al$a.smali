.class public final Lcom/google/android/exoplayer2/al$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/al;
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

.field public f:Lcom/google/android/exoplayer2/source/ads/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/a;->a:Lcom/google/android/exoplayer2/source/ads/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(J)I
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$a;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/a;->a(JJ)I

    move-result p1

    return p1
.end method

.method public final a(I)J
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/a;)Lcom/google/android/exoplayer2/al$a;
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    .line 495
    iput-object p2, p0, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    .line 496
    iput p3, p0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 497
    iput-wide p4, p0, Lcom/google/android/exoplayer2/al$a;->d:J

    .line 498
    iput-wide p6, p0, Lcom/google/android/exoplayer2/al$a;->e:J

    .line 499
    iput-object p8, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/al$a;
    .locals 9

    .line 467
    sget-object v8, Lcom/google/android/exoplayer2/source/ads/a;->a:Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, v0, p1

    const/4 v0, -0x1

    .line 1081
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ads/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final b(J)I
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$a;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/a;->b(JJ)I

    move-result p1

    return p1
.end method

.method public final b(II)J
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, v0, p1

    .line 639
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final c(I)Z
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/a$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->a:I

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 658
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/al$a;

    .line 659
    iget-object v2, p0, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    .line 660
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/al$a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/al$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$a;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$a;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$a;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$a;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    .line 664
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 671
    iget-object v2, p0, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 672
    iget v1, p0, Lcom/google/android/exoplayer2/al$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 673
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$a;->d:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 674
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$a;->e:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 675
    iget-object v1, p0, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
