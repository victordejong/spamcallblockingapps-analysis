.class public final Lcom/google/android/gms/internal/ads/zznr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final length:I

.field private zzahx:I

.field private final zzbfr:[Lcom/google/android/gms/internal/ads/zzht;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznr;->length:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/ads/zznr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zznr;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznr;->length:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznr;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zzahx:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zzahx:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zzahx:I

    return v0
.end method

.method public final zzbb(I)Lcom/google/android/gms/internal/ads/zzht;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznr;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
