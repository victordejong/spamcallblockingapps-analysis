.class public final Lcom/google/android/gms/internal/ads/zzblg;
.super Lcom/google/android/gms/internal/ads/zzbnt;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzfto:I

.field private final zzftp:Z

.field private final zzftq:Z

.field private zzfuc:Lcom/google/android/gms/internal/ads/zzsq;

.field private final zzfud:Lcom/google/android/gms/internal/ads/zzbkv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmz;IZZLcom/google/android/gms/internal/ads/zzbkv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lcom/google/android/gms/internal/ads/zzbnw;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblg;->view:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfto:I

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftp:Z

    .line 7
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftq:Z

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfud:Lcom/google/android/gms/internal/ads/zzbkv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzsh;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfuc:Lcom/google/android/gms/internal/ads/zzsq;

    return-void
.end method

.method public final zzadp()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzajh()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfto:I

    return v0
.end method

.method public final zzaji()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftp:Z

    return v0
.end method

.method public final zzajj()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftq:Z

    return v0
.end method

.method public final zzajq()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjf:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    return-object v0
.end method

.method public final zzajr()Landroid/view/View;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajs()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacz()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzajt()Lcom/google/android/gms/internal/ads/zzsq;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfuc:Lcom/google/android/gms/internal/ads/zzsq;

    return-object v0
.end method

.method public final zzb(JI)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->zzfud:Lcom/google/android/gms/internal/ads/zzbkv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbkv;->zzb(JI)V

    return-void
.end method
