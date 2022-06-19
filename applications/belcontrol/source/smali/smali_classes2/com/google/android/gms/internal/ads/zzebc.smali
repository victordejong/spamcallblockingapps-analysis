.class public final Lcom/google/android/gms/internal/ads/zzebc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzibn:Lcom/google/android/gms/internal/ads/zzegl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzegl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzibn:Lcom/google/android/gms/internal/ads/zzegl;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/ads/zzegl;)Lcom/google/android/gms/internal/ads/zzebc;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegl;->zzbem()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzebc;-><init>(Lcom/google/android/gms/internal/ads/zzegl;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzibn:Lcom/google/android/gms/internal/ads/zzegl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebq;->zzb(Lcom/google/android/gms/internal/ads/zzegl;)Lcom/google/android/gms/internal/ads/zzego;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbaq()Lcom/google/android/gms/internal/ads/zzegl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzibn:Lcom/google/android/gms/internal/ads/zzegl;

    return-object v0
.end method
