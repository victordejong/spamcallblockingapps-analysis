.class final synthetic Lcom/google/android/gms/internal/ads/bu2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/z03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/z03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu2;->a:Lcom/google/android/gms/internal/ads/z03;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu2;->a:Lcom/google/android/gms/internal/ads/z03;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fz2;->cancel(Z)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->m()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z03;->u(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->l()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z03;->v(Ljava/lang/Throwable;)Z

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
