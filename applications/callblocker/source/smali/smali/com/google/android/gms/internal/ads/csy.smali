.class public final Lcom/google/android/gms/internal/ads/csy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cye;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cye;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csy;->a:Lcom/google/android/gms/internal/ads/cye;

    .line 3
    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/ads/cye;)Lcom/google/android/gms/internal/ads/csy;
    .locals 2

    .prologue
    .line 4
    .line 5
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cye;->c()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/csy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/csy;-><init>(Lcom/google/android/gms/internal/ads/cye;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/cye;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csy;->a:Lcom/google/android/gms/internal/ads/cye;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csy;->a:Lcom/google/android/gms/internal/ads/cye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ctq;->a(Lcom/google/android/gms/internal/ads/cye;)Lcom/google/android/gms/internal/ads/cyf;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
