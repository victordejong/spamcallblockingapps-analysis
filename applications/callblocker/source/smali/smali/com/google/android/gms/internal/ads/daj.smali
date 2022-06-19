.class public final Lcom/google/android/gms/internal/ads/daj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/daj;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic a()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/daj;->b()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)[B
    .locals 2

    .prologue
    .line 4
    new-array v1, p0, [B

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/daj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 6
    return-object v1
.end method

.method private static b()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 3
    return-object v0
.end method
