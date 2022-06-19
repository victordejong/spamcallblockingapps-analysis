.class public final Lcom/google/android/gms/internal/gtm/zzf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzrh;


# static fields
.field public static final zzoc:Lcom/google/android/gms/internal/gtm/zzrh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzf;->zzoc:Lcom/google/android/gms/internal/gtm/zzrh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzc$zza$zzb;->zza(I)Lcom/google/android/gms/internal/gtm/zzc$zza$zzb;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
