.class final synthetic Lcom/google/android/gms/internal/ads/q5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/r5;

.field private final e:Lcom/google/android/gms/internal/ads/ax2;

.field private final f:Lcom/google/android/gms/internal/ads/mk3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r5;Lcom/google/android/gms/internal/ads/ax2;Lcom/google/android/gms/internal/ads/mk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q5;->d:Lcom/google/android/gms/internal/ads/r5;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q5;->e:Lcom/google/android/gms/internal/ads/ax2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q5;->f:Lcom/google/android/gms/internal/ads/mk3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q5;->d:Lcom/google/android/gms/internal/ads/r5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q5;->e:Lcom/google/android/gms/internal/ads/ax2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/q5;->f:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/r5;->t(Lcom/google/android/gms/internal/ads/ax2;Lcom/google/android/gms/internal/ads/mk3;)V

    return-void
.end method
