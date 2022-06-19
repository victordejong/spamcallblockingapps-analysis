.class final Lcom/google/android/gms/internal/ads/cpt;
.super Lcom/google/android/gms/internal/ads/cpk;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpk",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cpt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:[Ljava/lang/Object;

.field private final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/cpt;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cpt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cpt;->a:Lcom/google/android/gms/internal/ads/cpt;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpt;->b:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cpt;->c:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/cpt;->d:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/cpt;->e:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    .line 7
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpt;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    add-int/2addr v0, p2

    return v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpy",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    return-object v0
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpt;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cpt;->c:[Ljava/lang/Object;

    .line 9
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v1

    .line 12
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 14
    :goto_2
    iget v3, p0, Lcom/google/android/gms/internal/ads/cpt;->d:I

    and-int/2addr v0, v3

    .line 15
    aget-object v3, v2, v0

    .line 16
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    const/4 v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 20
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method final d()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/google/android/gms/internal/ads/cpc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpt;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpt;->e:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->a()Lcom/google/android/gms/internal/ads/cpy;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpt;->f:I

    return v0
.end method
