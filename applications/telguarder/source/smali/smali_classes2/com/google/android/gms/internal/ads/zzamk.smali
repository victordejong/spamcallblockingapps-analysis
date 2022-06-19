.class public final Lcom/google/android/gms/internal/ads/zzamk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzamb<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzakz;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdla:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdkz:Lcom/google/android/gms/internal/ads/zzamc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdky:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamk;)Lcom/google/android/gms/internal/ads/zzamd;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdky:Lcom/google/android/gms/internal/ads/zzamd;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzalx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalm;",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "TO;>;)V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzyy()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahm;->zzdhq:Lcom/google/android/gms/internal/ads/zzain;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzamp;-><init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzain;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaip;)V

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdkz:Lcom/google/android/gms/internal/ads/zzamc;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzamc;->zzi(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdla:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzalx;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 22
    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    .line 23
    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void

    :catchall_0
    move-exception p2

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    .line 27
    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzalx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzamk;->zza(Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzalx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamk;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TO;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->zzb(Lcom/google/android/gms/internal/ads/zzei;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamm;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzbaa;Lcom/google/android/gms/internal/ads/zzalm;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zza(Lcom/google/android/gms/internal/ads/zzbae;Lcom/google/android/gms/internal/ads/zzbac;)V

    return-object v0
.end method
