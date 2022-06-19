.class final Lcom/google/android/gms/internal/ads/aco;
.super Lcom/google/android/gms/internal/ads/ajl;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/aco;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/aco;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aco;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aco;->a:Lcom/google/android/gms/internal/ads/aco;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ajl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aqp;
    .locals 1

    const-string v0, "moov"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/asr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/asr;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "mvhd"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/arq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/arq;-><init>()V

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ats;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ats;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
