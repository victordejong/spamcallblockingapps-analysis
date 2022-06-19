.class final synthetic Lcom/google/android/gms/internal/ads/h41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/vo0;

.field private final c:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vo0;Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h41;->b:Lcom/google/android/gms/internal/ads/vo0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h41;->c:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/h41;->b:Lcom/google/android/gms/internal/ads/vo0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h41;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vo0;->b()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->A0()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wu;->e()V

    return-void
.end method
