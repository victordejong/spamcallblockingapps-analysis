.class public abstract Lcom/google/android/gms/internal/gtm/zzru;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzbch:Lcom/google/android/gms/internal/gtm/zzru;

.field private static final zzbci:Lcom/google/android/gms/internal/gtm/zzru;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrw;-><init>(Lcom/google/android/gms/internal/gtm/zzrv;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbch:Lcom/google/android/gms/internal/gtm/zzru;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrx;-><init>(Lcom/google/android/gms/internal/gtm/zzrv;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbci:Lcom/google/android/gms/internal/gtm/zzru;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzrv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzru;-><init>()V

    return-void
.end method

.method public static zzqc()Lcom/google/android/gms/internal/gtm/zzru;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbch:Lcom/google/android/gms/internal/gtm/zzru;

    return-object v0
.end method

.method public static zzqd()Lcom/google/android/gms/internal/gtm/zzru;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbci:Lcom/google/android/gms/internal/gtm/zzru;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/Object;J)V
.end method
