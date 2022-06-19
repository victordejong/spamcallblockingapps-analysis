.class final synthetic Lcom/google/android/gms/internal/ads/ki0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ni0;

.field private final c:Lcom/google/android/gms/internal/ads/ok0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ni0;Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ki0;->b:Lcom/google/android/gms/internal/ads/ni0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ki0;->c:Lcom/google/android/gms/internal/ads/ok0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki0;->b:Lcom/google/android/gms/internal/ads/ni0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ki0;->c:Lcom/google/android/gms/internal/ads/ok0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ni0;->o(Lcom/google/android/gms/internal/ads/ok0;)V

    return-void
.end method
