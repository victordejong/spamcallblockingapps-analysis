.class public final Lcom/google/android/gms/internal/ads/dft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfp;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dft;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/djc;->a()Lcom/google/android/gms/internal/ads/djc;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/dft;->b:Lcom/google/android/gms/internal/ads/djc;

    sput-object v0, Lcom/google/android/gms/internal/ads/dft;->c:Lcom/google/android/gms/internal/ads/djc;

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/dft;->d:Lcom/google/android/gms/internal/ads/djc;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dft;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfp;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfo;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfw;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V

    return-void
.end method
