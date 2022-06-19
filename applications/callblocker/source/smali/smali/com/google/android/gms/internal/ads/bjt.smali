.class final synthetic Lcom/google/android/gms/internal/ads/bjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cqt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bjt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bjt;->a:Lcom/google/android/gms/internal/ads/cqt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 1
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 3
    return-object v0
.end method
