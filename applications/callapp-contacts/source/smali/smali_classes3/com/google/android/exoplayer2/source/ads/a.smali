.class public final Lcom/google/android/exoplayer2/source/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/source/ads/a;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[J

.field public final e:[Lcom/google/android/exoplayer2/source/ads/a$a;

.field public final f:J

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 262
    new-instance v8, Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v0, 0x0

    new-array v2, v0, [J

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/a$a;JJ)V

    sput-object v8, Lcom/google/android/exoplayer2/source/ads/a;->a:Lcom/google/android/exoplayer2/source/ads/a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 301
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/a$a;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/a$a;JJ)V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    .line 316
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    .line 317
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    .line 318
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    .line 319
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-nez p3, :cond_0

    .line 321
    new-array p3, p1, [Lcom/google/android/exoplayer2/source/ads/a$a;

    const/4 p1, 0x0

    .line 322
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ge p1, p2, :cond_0

    .line 323
    new-instance p2, Lcom/google/android/exoplayer2/source/ads/a$a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>()V

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    return-void
.end method

.method private a(JJI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    aget-wide v4, v3, p5

    const/4 p5, 0x1

    cmp-long v3, v4, v0

    if-nez v3, :cond_3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v0

    if-eqz v3, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return p5

    :cond_3
    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    return p5

    :cond_4
    return v2
.end method


# virtual methods
.method public final a(JJ)I
    .locals 7

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    .line 345
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/a;->a(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 348
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/a$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final b(JJ)I
    .locals 6

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 370
    :goto_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    array-length v3, p4

    if-ge p3, v3, :cond_2

    aget-wide v3, p4, p3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    aget-wide v3, p4, p3

    cmp-long p4, p1, v3

    if-gez p4, :cond_1

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object p4, p4, p3

    .line 372
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/ads/a$a;->a()Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    array-length p1, p1

    if-ge p3, p1, :cond_3

    return p3

    :cond_3
    :goto_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/a;

    .line 499
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    .line 503
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    .line 504
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 509
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    mul-int/lit8 v0, v0, 0x1f

    .line 510
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 511
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 512
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 513
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 514
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 526
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    .line 527
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    aget-wide v5, v3, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    .line 529
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 530
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->c:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->c:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    .line 549
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    .line 537
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    .line 543
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    .line 546
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    .line 540
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    .line 534
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    .line 552
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 554
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->c:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 559
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    .line 561
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 564
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
