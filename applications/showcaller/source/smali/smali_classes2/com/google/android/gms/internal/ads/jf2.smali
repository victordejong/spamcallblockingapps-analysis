.class final synthetic Lcom/google/android/gms/internal/ads/jf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/a42;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/a42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jf2;->d:Lcom/google/android/gms/internal/ads/a42;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/a42;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jf2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/jf2;-><init>(Lcom/google/android/gms/internal/ads/a42;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jf2;->d:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a42;->d()V

    return-void
.end method
