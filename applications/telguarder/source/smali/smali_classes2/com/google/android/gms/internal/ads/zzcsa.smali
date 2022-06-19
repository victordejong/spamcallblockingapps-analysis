.class final Lcom/google/android/gms/internal/ads/zzcsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcag;


# instance fields
.field private final zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzgtj:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbli;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgtk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbli;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgtj:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgtk:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgtj:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbli;

    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgtk:Lcom/google/android/gms/internal/ads/zzbeb;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzay(Z)V

    .line 10
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzdmw;->zzftq:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbli;->zzahf()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgtk:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjp:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjp:I

    :goto_0
    move v9, v1

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvx;->orientation:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvx;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_1

    :cond_2
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjp:I

    goto :goto_0

    .line 23
    :goto_1
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdwd:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzdnd;->zzdsw:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgeu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzdnd;->zzdsy:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    move-object v12, v2

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbeb;ILcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 25
    invoke-static {v1, v15, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
