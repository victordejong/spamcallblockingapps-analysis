.class public final Lcom/google/android/gms/internal/ads/b32;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/a32;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a32;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/b32;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/w82;->F()Lcom/google/android/gms/internal/ads/w82;

    invoke-static {}, Lcom/google/android/gms/internal/ads/w82;->F()Lcom/google/android/gms/internal/ads/w82;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/a32;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a32;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/d32;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/d32;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m12;->e(Lcom/google/android/gms/internal/ads/e12;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
