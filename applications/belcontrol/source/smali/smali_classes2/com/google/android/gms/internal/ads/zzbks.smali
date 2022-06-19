.class public final Lcom/google/android/gms/internal/ads/zzbks;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzfto:I

.field private final zzftp:Z

.field private final zzftq:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmz;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbks;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzfto:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftp:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftq:Z

    return-void
.end method


# virtual methods
.method public final zzaje()Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-object v0
.end method

.method public final zzajf()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajg()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final zzajh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzfto:I

    return v0
.end method

.method public final zzaji()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftp:Z

    return v0
.end method

.method public final zzajj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftq:Z

    return v0
.end method
