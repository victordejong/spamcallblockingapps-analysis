.class public final Lcom/google/android/gms/internal/ads/el;
.super Lcom/google/android/gms/internal/ads/xk;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/z/c;

.field private final c:Lcom/google/android/gms/ads/z/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/z/c;Lcom/google/android/gms/ads/z/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/el;->b:Lcom/google/android/gms/ads/z/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/el;->c:Lcom/google/android/gms/ads/z/b;

    return-void
.end method


# virtual methods
.method public final E(I)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/el;->b:Lcom/google/android/gms/ads/z/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/el;->c:Lcom/google/android/gms/ads/z/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/el;->b:Lcom/google/android/gms/ads/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzym;->p()Lcom/google/android/gms/ads/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/el;->b:Lcom/google/android/gms/ads/z/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method
