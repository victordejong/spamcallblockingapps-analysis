.class final synthetic Lcom/google/android/gms/internal/ads/sc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sc;->b:Lcom/google/android/gms/internal/ads/pb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sc;->b:Lcom/google/android/gms/internal/ads/pb;

    sget-object v1, Lcom/google/android/gms/internal/ads/g9;->p:Lcom/google/android/gms/internal/ads/v9;

    const-string v2, "/result"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/wc;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pb;->i()V

    return-void
.end method
