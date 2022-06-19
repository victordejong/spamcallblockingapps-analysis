.class final synthetic Lcom/google/android/gms/internal/ads/bcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcf;

.field private final b:Lcom/google/android/gms/internal/ads/ben;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcf;Lcom/google/android/gms/internal/ads/ben;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcj;->a:Lcom/google/android/gms/internal/ads/bcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcj;->b:Lcom/google/android/gms/internal/ads/ben;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcj;->a:Lcom/google/android/gms/internal/ads/bcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcj;->b:Lcom/google/android/gms/internal/ads/ben;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcf;->d(Lcom/google/android/gms/internal/ads/ben;)V

    return-void
.end method
