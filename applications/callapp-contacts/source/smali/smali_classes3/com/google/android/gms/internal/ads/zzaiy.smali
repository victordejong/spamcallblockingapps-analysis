.class public final Lcom/google/android/gms/internal/ads/zzaiy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaiy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final url:Ljava/lang/String;

.field private final zzdju:[Ljava/lang/String;

.field private final zzdjv:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/ic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdju:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdjv:[Ljava/lang/String;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/zzaiy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzaiy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzl;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 15
    new-array v2, v1, [Ljava/lang/String;

    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v3

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->url:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdju:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzdjv:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
