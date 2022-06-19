.class public abstract Lcom/google/android/exoplayer2/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/al$a;,
        Lcom/google/android/exoplayer2/al$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/exoplayer2/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 681
    new-instance v0, Lcom/google/android/exoplayer2/al$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/al$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 745
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 746
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p1, v0

    return p1

    .line 748
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 740
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public final a(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)I
    .locals 3

    const/4 v0, 0x0

    .line 1955
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    .line 852
    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide/16 v0, 0x0

    .line 2809
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v2

    .line 853
    iget v2, v2, Lcom/google/android/exoplayer2/al$b;->o:I

    if-ne v2, p1, :cond_1

    .line 854
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/exoplayer2/al;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 3809
    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p1

    .line 858
    iget p1, p1, Lcom/google/android/exoplayer2/al$b;->n:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Z)I
    .locals 0

    .line 786
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al$b;",
            "Lcom/google/android/exoplayer2/al$a;",
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

    .line 891
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 890
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al$b;",
            "Lcom/google/android/exoplayer2/al$a;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 917
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 4301
    iget-wide p4, p1, Lcom/google/android/exoplayer2/al$b;->p:J

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 924
    :cond_0
    iget p3, p1, Lcom/google/android/exoplayer2/al$b;->n:I

    .line 4331
    iget-wide v0, p1, Lcom/google/android/exoplayer2/al$b;->r:J

    add-long/2addr v0, p4

    const/4 p4, 0x1

    .line 926
    invoke-virtual {p0, p3, p2, p4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p5

    .line 4514
    iget-wide v2, p5, Lcom/google/android/exoplayer2/al$a;->d:J

    :goto_0
    cmp-long p5, v2, p6

    if-eqz p5, :cond_1

    cmp-long p5, v0, v2

    if-ltz p5, :cond_1

    .line 927
    iget p5, p1, Lcom/google/android/exoplayer2/al$b;->o:I

    if-ge p3, p5, :cond_1

    sub-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    .line 930
    invoke-virtual {p0, p3, p2, p4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p5

    .line 5514
    iget-wide v2, p5, Lcom/google/android/exoplayer2/al$a;->d:J

    goto :goto_0

    .line 932
    :cond_1
    iget-object p1, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
.end method

.method public a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;
    .locals 1

    .line 943
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
.end method

.method public abstract a(I)Ljava/lang/Object;
.end method

.method public abstract b()I
.end method

.method public b(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 770
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 771
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->a(Z)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1

    .line 773
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 765
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v0

    return p1
.end method

.method public b(Z)I
    .locals 0

    .line 798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)Z
    .locals 0

    .line 880
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Ljava/lang/Object;)I
.end method

.method public final c()Z
    .locals 1

    .line 719
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 992
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/al;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 995
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/al;

    .line 996
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 999
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    .line 1000
    new-instance v3, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    .line 1001
    new-instance v4, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    .line 1002
    new-instance v5, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    const/4 v6, 0x0

    .line 1003
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-wide/16 v7, 0x0

    .line 5809
    invoke-virtual {p0, v6, v1, v7, v8}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v9

    .line 6809
    invoke-virtual {p1, v6, v4, v7, v8}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v7

    .line 1004
    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/al$b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1008
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1009
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v4

    .line 1010
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/al$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1019
    new-instance v0, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    .line 1020
    new-instance v1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1023
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    const-wide/16 v5, 0x0

    .line 7809
    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v5

    .line 1024
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/al$b;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    .line 1026
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    add-int/2addr v2, v0

    .line 1027
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    if-ge v3, v0, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    const/4 v0, 0x1

    .line 1028
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al$a;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method
