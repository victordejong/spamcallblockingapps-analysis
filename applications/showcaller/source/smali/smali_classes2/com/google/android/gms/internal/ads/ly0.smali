.class public final Lcom/google/android/gms/internal/ads/ly0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/gy0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/wy0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/w00;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/wy0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/w00;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ly0;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ly0;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ly0;->c:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ly0;->d:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0;->a:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/u01;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u01;->a()Lcom/google/android/gms/internal/ads/wy0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly0;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v1, Lcom/google/android/gms/internal/ads/ky0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ky0;->a()Lcom/google/android/gms/internal/ads/w00;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ly0;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v2, Lcom/google/android/gms/internal/ads/jy0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jy0;->a()Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ly0;->d:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/gy0;

    .line 2
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/gy0;-><init>(Lcom/google/android/gms/internal/ads/wy0;Lcom/google/android/gms/internal/ads/w00;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v4
.end method
