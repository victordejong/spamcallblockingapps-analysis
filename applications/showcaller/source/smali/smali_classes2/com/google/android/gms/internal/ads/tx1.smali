.class final synthetic Lcom/google/android/gms/internal/ads/tx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ok2;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ok2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx1;->a:Lcom/google/android/gms/internal/ads/ok2;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ok2;)Lcom/google/android/gms/internal/ads/vy0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/tx1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/tx1;-><init>(Lcom/google/android/gms/internal/ads/ok2;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx1;->a:Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok2;->w()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0
.end method
