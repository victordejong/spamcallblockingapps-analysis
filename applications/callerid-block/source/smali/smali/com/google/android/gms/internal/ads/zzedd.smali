.class final Lcom/google/android/gms/internal/ads/zzedd;
.super Lcom/google/android/gms/internal/ads/zzede;
.source ""


# instance fields
.field final transient d:I

.field final transient e:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzede;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzede;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzede;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzedd;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzedd;->e:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/nw1;->d(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzede;->zzh(II)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p1

    return-object p1
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedb;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedb;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedb;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzede;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzede;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/nw1;->f(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzede;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzede;->zzh(II)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p1

    return-object p1
.end method
