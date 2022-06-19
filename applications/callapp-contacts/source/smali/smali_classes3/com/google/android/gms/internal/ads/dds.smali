.class public final Lcom/google/android/gms/internal/ads/dds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Lcom/google/android/gms/internal/ads/djc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/ddv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddv;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/ded;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ded;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->b:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/dei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dei;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->c:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dec;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->d:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/deo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/deo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->e:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/des;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/des;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->f:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dej;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->g:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/det;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/det;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->h:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/djc;->a()Lcom/google/android/gms/internal/ads/djc;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->i:Lcom/google/android/gms/internal/ads/djc;

    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->j:Lcom/google/android/gms/internal/ads/djc;

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/dds;->k:Lcom/google/android/gms/internal/ads/djc;

    .line 27
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dds;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 30
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/dft;->a()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ddv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddv;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dec;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ded;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ded;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 1010
    invoke-static {}, Lcom/google/android/gms/internal/ads/dei;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    new-instance v0, Lcom/google/android/gms/internal/ads/dei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dei;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dej;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/deo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/deo;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/des;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/des;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/det;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/det;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dcu;)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/ddr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddr;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V

    return-void
.end method
