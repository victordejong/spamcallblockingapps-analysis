.class public final Lcom/google/android/gms/internal/ads/cvm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvi;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cvm;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/cys;->b()Lcom/google/android/gms/internal/ads/cys;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/cvm;->b:Lcom/google/android/gms/internal/ads/cys;

    sput-object v0, Lcom/google/android/gms/internal/ads/cvm;->c:Lcom/google/android/gms/internal/ads/cys;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/cvm;->b:Lcom/google/android/gms/internal/ads/cys;

    sput-object v0, Lcom/google/android/gms/internal/ads/cvm;->d:Lcom/google/android/gms/internal/ads/cys;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvm;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvi;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/csx;Z)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cvh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvh;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/csx;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cvq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvq;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cth;)V

    .line 4
    return-void
.end method
