.class final synthetic Lcom/google/android/gms/internal/ads/bnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ami;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/chs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnp;->a:Lcom/google/android/gms/internal/ads/chs;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/chs;)Lcom/google/android/gms/internal/ads/ami;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bnp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bnp;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnp;->a:Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->k()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    return-object v0
.end method
