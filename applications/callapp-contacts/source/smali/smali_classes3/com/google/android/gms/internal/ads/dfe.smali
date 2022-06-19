.class public final Lcom/google/android/gms/internal/ads/dfe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfb;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dfe;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dfa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfa;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dfe;->c:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/djc;->a()Lcom/google/android/gms/internal/ads/djc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dfe;->a:Lcom/google/android/gms/internal/ads/djc;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/djc;->a()Lcom/google/android/gms/internal/ads/djc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dfe;->d:Lcom/google/android/gms/internal/ads/djc;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/djc;->a()Lcom/google/android/gms/internal/ads/djc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dfe;->e:Lcom/google/android/gms/internal/ads/djc;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dds;->a()V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dfa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfa;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/dfb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dfb;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddj;Lcom/google/android/gms/internal/ads/dcu;)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfg;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
