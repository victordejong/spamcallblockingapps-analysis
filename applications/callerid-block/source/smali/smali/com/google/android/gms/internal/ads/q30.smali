.class public final Lcom/google/android/gms/internal/ads/q30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xs2;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/em;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/em;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q30;->b:Lcom/google/android/gms/internal/ads/em;

    return-void
.end method


# virtual methods
.method public final R(Lcom/google/android/gms/internal/ads/ws2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q30;->b:Lcom/google/android/gms/internal/ads/em;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/ws2;->j:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/em;->a(Z)V

    return-void
.end method
