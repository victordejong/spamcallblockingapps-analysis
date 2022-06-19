.class final synthetic Lcom/google/android/gms/internal/ads/zp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/zo;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zo;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zp;-><init>(Lcom/google/android/gms/internal/ads/zo;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->b()V

    return-void
.end method
