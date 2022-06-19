.class public final Lcom/google/android/gms/internal/ads/cpj;
.super Lcom/google/android/gms/internal/ads/cpa;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpa",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private d:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cpa;-><init>(I)V

    .line 2
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    .line 5
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cpd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpj;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 2

    .prologue
    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cpd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;

    goto :goto_0

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;

    .line 27
    :cond_1
    return-object p0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 1

    .prologue
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cpd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;

    goto :goto_0

    .line 34
    :cond_0
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cpk;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpk;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 12
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cpt;

    iget v2, p0, Lcom/google/android/gms/internal/ads/cpj;->e:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cpt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 16
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cpj;->c:Z

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    .line 18
    :goto_2
    return-object v0

    .line 7
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cpt;->a:Lcom/google/android/gms/internal/ads/cpt;

    goto :goto_2

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpk;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->a:[Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpk;->a(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpk;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    goto :goto_1

    .line 6
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 4

    .prologue
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->b:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 42
    :goto_0
    and-int/2addr v0, v1

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 44
    if-nez v3, :cond_1

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpj;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/cpj;->e:I

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;

    .line 55
    :cond_0
    :goto_1
    return-object p0

    .line 49
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpj;->d:[Ljava/lang/Object;

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;

    goto :goto_1
.end method
