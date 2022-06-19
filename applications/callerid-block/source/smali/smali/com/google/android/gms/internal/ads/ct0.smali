.class final synthetic Lcom/google/android/gms/internal/ads/ct0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/lt0;

.field private final c:Lcom/google/android/gms/internal/ads/fp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lt0;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ct0;->b:Lcom/google/android/gms/internal/ads/lt0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ct0;->c:Lcom/google/android/gms/internal/ads/fp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ct0;->b:Lcom/google/android/gms/internal/ads/lt0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ct0;->c:Lcom/google/android/gms/internal/ads/fp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lt0;->j(Lcom/google/android/gms/internal/ads/fp;)V

    return-void
.end method
