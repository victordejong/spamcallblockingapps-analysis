.class public final Lcom/google/android/gms/internal/ads/g43;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f43;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/g43;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/g43;->b:Lcom/google/android/gms/internal/ads/ia3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/g43;->c:Lcom/google/android/gms/internal/ads/ia3;

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/i43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/i43;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/b43;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/f43;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f43;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
