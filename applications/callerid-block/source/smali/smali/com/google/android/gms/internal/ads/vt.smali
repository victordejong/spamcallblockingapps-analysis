.class final synthetic Lcom/google/android/gms/internal/ads/vt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vt;->b:Lcom/google/android/gms/dynamic/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vt;->b:Lcom/google/android/gms/dynamic/a;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/vh;->M(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method
