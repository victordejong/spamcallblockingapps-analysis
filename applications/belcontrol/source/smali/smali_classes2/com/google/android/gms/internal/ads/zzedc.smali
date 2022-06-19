.class public final Lcom/google/android/gms/internal/ads/zzedc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzicr:Lcom/google/android/gms/internal/ads/zzegy;
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

.field private static final zzidl:Ljava/lang/String;

.field private static final zzidm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeda;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedc;->zzidl:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzecz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecz;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedc;->zzidm:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegy;->zzbfk()Lcom/google/android/gms/internal/ads/zzegy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedc;->zzicr:Lcom/google/android/gms/internal/ads/zzegy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegy;->zzbfk()Lcom/google/android/gms/internal/ads/zzegy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedc;->zzics:Lcom/google/android/gms/internal/ads/zzegy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegy;->zzbfk()Lcom/google/android/gms/internal/ads/zzegy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedc;->zzict:Lcom/google/android/gms/internal/ads/zzegy;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebs;->zzbba()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzecz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeda;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzeax;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzede;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedf;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebh;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
