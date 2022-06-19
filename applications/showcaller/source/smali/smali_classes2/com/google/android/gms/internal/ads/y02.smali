.class final synthetic Lcom/google/android/gms/internal/ads/y02;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/c12;

.field private final b:Lcom/google/android/gms/internal/ads/wn0;

.field private final c:Lcom/google/android/gms/internal/ads/ej2;

.field private final d:Lcom/google/android/gms/internal/ads/gk1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c12;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/gk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y02;->a:Lcom/google/android/gms/internal/ads/c12;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y02;->b:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y02;->c:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/y02;->d:Lcom/google/android/gms/internal/ads/gk1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y02;->b:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y02;->c:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y02;->d:Lcom/google/android/gms/internal/ads/gk1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->I:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->C()V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->p0()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->onPause()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gk1;->h()Lcom/google/android/gms/internal/ads/fk1;

    move-result-object p1

    return-object p1
.end method
