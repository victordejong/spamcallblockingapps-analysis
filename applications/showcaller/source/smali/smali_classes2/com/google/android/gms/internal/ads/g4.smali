.class final synthetic Lcom/google/android/gms/internal/ads/g4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/p4;

.field private final e:Lcom/google/android/gms/internal/ads/q6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/p4;Lcom/google/android/gms/internal/ads/q6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g4;->d:Lcom/google/android/gms/internal/ads/p4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g4;->e:Lcom/google/android/gms/internal/ads/q6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g4;->e:Lcom/google/android/gms/internal/ads/q6;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p4;->a0(Lcom/google/android/gms/internal/ads/q6;)V

    return-void
.end method
