.class public final Lcom/google/android/gms/internal/ads/o43;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/n43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n43;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/l43;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l43;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/o43;->a:Lcom/google/android/gms/internal/ads/ia3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/o43;->b:Lcom/google/android/gms/internal/ads/ia3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/o43;->c:Lcom/google/android/gms/internal/ads/ia3;

    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/q43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/q43;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/t43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/t43;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/r23;->a()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/b43;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/l43;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l43;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/n43;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/n43;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p23;->d(Lcom/google/android/gms/internal/ads/j23;Lcom/google/android/gms/internal/ads/w13;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
