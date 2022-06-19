.class public final Lcom/google/android/gms/internal/ads/zzbks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbks;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzfto:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftp:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftq:Z

    return-void
.end method


# virtual methods
.method public final zzaje()Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-object v0
.end method

.method public final zzajf()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajg()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final zzajh()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzfto:I

    return v0
.end method

.method public final zzaji()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftp:Z

    return v0
.end method

.method public final zzajj()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbks;->zzftq:Z

    return v0
.end method
