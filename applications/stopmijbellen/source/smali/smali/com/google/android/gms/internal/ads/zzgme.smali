.class final Lcom/google/android/gms/internal/ads/zzgme;
.super Lcom/google/android/gms/internal/ads/zzgio;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgio<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgme<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private zzc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgme;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgme;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgme;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgio;->zzb()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgio;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgme;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzgme<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgme;

    return-object v0
.end method

.method private final zzf(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    const/16 v1, 0x23

    const-string v2, "Index:"

    const-string v3, ", Size:"

    invoke-static {v1, v2, p1, v3, v0}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzg(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgme;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgio;->zzbU()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    if-gt p1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 3
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 4
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/support/v4/media/b;->b(IIII)I

    move-result v0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    sub-int/2addr v3, p1

    .line 7
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 9
    aput-object p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    .line 10
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgme;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgio;->zzbU()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 14
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    .line 16
    aput-object p1, v0, v1

    .line 17
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgme;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgio;->zzbU()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgme;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 3
    aget-object v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    .line 5
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgio;->zzbU()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgme;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 3
    aget-object v1, v0, p1

    .line 4
    aput-object p2, v0, p1

    .line 5
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/ads/zzgku;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgme;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:I

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgme;-><init>([Ljava/lang/Object;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
