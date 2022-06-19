.class public final Lcom/google/android/gms/internal/ads/cux;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/internal/ads/cys;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cuv;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cux;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cuu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cuu;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cux;->c:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cys;->b()Lcom/google/android/gms/internal/ads/cys;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cux;->a:Lcom/google/android/gms/internal/ads/cys;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/cys;->b()Lcom/google/android/gms/internal/ads/cys;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cux;->d:Lcom/google/android/gms/internal/ads/cys;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/cys;->b()Lcom/google/android/gms/internal/ads/cys;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cux;->e:Lcom/google/android/gms/internal/ads/cys;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ctp;->a()V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cuu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cuu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/cuv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/cuv;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/cuz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cuz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cth;)V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/cva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cva;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cth;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
