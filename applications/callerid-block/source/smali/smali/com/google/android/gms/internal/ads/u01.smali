.class final synthetic Lcom/google/android/gms/internal/ads/u01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/w01;

.field private final c:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/w01;Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u01;->b:Lcom/google/android/gms/internal/ads/w01;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u01;->c:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u01;->b:Lcom/google/android/gms/internal/ads/w01;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u01;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/w01;->c(Lcom/google/android/gms/internal/ads/jt;)V

    return-void
.end method
