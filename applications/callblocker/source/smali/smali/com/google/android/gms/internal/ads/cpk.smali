.class public abstract Lcom/google/android/gms/internal/ads/cpk;
.super Lcom/google/android/gms/internal/ads/cpb;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpb",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/android/gms/internal/ads/cpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpb;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 8

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    const v0, 0x2ccccccc

    if-ge v2, v0, :cond_0

    .line 47
    add-int/lit8 v0, v2, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 48
    :goto_0
    int-to-double v4, v0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    int-to-double v6, v2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 49
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    if-ge v2, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cor;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 52
    :cond_1
    return v0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/cpk;->b(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cpv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cpv;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    array-length v0, p6

    const v3, 0x7ffffff9

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/cor;->a(ZLjava/lang/Object;)V

    .line 3
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    aput-object p0, v0, v2

    .line 5
    aput-object p1, v0, v1

    .line 6
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 7
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 8
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 9
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 10
    const/4 v1, 0x6

    array-length v3, p6

    invoke-static {p6, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cpk;->b(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 2
    goto :goto_0
.end method

.method static synthetic a(II)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/cpk;->b(II)Z

    move-result v0

    return v0
.end method

.method public static b(I)Lcom/google/android/gms/internal/ads/cpj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/gms/internal/ads/cpj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    const-string/jumbo v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cow;->a(ILjava/lang/String;)I

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/ads/cpj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cpj;-><init>(I)V

    return-object v0
.end method

.method private static varargs b(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 12
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v7

    .line 18
    new-array v3, v7, [Ljava/lang/Object;

    .line 19
    add-int/lit8 v4, v7, -0x1

    move v1, v6

    move v5, v6

    move v2, v6

    .line 22
    :goto_1
    if-ge v1, p0, :cond_2

    .line 23
    aget-object v0, p1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpo;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 25
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 26
    :goto_2
    and-int v10, v0, v4

    .line 27
    aget-object v11, v3, v10

    .line 28
    if-nez v11, :cond_1

    .line 29
    add-int/lit8 v0, v5, 0x1

    aput-object v8, p1, v5

    .line 30
    aput-object v8, v3, v10

    .line 31
    add-int/2addr v2, v9

    move v5, v0

    .line 35
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 13
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cpt;->a:Lcom/google/android/gms/internal/ads/cpt;

    .line 43
    :goto_3
    return-object v0

    .line 15
    :pswitch_1
    aget-object v0, p1, v6

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpk;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    goto :goto_3

    .line 33
    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v5, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 37
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 38
    aget-object v1, p1, v6

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/cpv;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpv;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    .line 40
    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v0

    div-int/lit8 v1, v7, 0x2

    if-ge v0, v1, :cond_4

    move p0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    array-length v0, p1

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/cpk;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 43
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/cpt;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cpt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_3

    :cond_5
    move-object v1, p1

    .line 42
    goto :goto_4

    .line 12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(II)Z
    .locals 2

    .prologue
    .line 44
    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpc;

    .line 65
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpk;->h()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpc;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 55
    if-ne p1, p0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/cpk;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpk;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/cpk;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpk;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpk;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/cpw;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method h()Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpw;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->a()Lcom/google/android/gms/internal/ads/cpy;

    move-result-object v0

    return-object v0
.end method
