.class public final Lcom/google/android/gms/internal/ads/zzedr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzicr:Lcom/google/android/gms/internal/ads/zzegy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzics:Lcom/google/android/gms/internal/ads/zzegy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzict:Lcom/google/android/gms/internal/ads/zzegy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzidx:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedn;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedr;->zzidx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegy;->zzbfk()Lcom/google/android/gms/internal/ads/zzegy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedr;->zzicr:Lcom/google/android/gms/internal/ads/zzegy;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedr;->zzics:Lcom/google/android/gms/internal/ads/zzegy;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedr;->zzict:Lcom/google/android/gms/internal/ads/zzegy;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedr;->zzbba()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzbba()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedn;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzeax;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedm;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzeax;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedu;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebh;)V

    return-void
.end method
