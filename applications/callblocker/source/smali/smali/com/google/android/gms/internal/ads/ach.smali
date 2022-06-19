.class final synthetic Lcom/google/android/gms/internal/ads/ach;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aad;

.field private final b:Z

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aad;ZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ach;->a:Lcom/google/android/gms/internal/ads/aad;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ach;->b:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ach;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ach;->a:Lcom/google/android/gms/internal/ads/aad;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ach;->b:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ach;->c:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aad;->a(ZJ)V

    .line 3
    return-void
.end method
