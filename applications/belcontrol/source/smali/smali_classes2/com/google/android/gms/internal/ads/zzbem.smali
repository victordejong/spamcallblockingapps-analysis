.class public final synthetic Lcom/google/android/gms/internal/ads/zzbem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzcmi:Landroid/content/Context;

.field private final zzdjl:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzesd:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzese:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzesf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzcmi:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzdjl:Lcom/google/android/gms/internal/ads/zzei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzesd:Lcom/google/android/gms/internal/ads/zzazn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzese:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzesf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzcmi:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzdjl:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzesd:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzese:Lcom/google/android/gms/ads/internal/zzb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzesf:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzks()Lcom/google/android/gms/internal/ads/zzbej;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzael()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztu;->zznf()Lcom/google/android/gms/internal/ads/zztu;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazx;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazx;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbeo;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbeo;-><init>(Lcom/google/android/gms/internal/ads/zzazx;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfq;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
