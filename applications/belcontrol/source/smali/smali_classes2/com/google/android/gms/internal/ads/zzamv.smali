.class public final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final zzdky:Lcom/google/android/gms/internal/ads/zzamd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzdkz:Lcom/google/android/gms/internal/ads/zzamc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final zzdla:Ljava/lang/String;

.field private final zzdle:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdla:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdkz:Lcom/google/android/gms/internal/ads/zzamc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdky:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzamv;)Lcom/google/android/gms/internal/ads/zzamd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdky:Lcom/google/android/gms/internal/ads/zzamd;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalx;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzyy()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzahm;->zzdhq:Lcom/google/android/gms/internal/ads/zzain;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamx;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzamx;-><init>(Lcom/google/android/gms/internal/ads/zzamv;Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzain;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaip;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdkz:Lcom/google/android/gms/internal/ads/zzamc;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzamc;->zzi(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdla:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzakw;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(Lcom/google/android/gms/internal/ads/zzamv;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
