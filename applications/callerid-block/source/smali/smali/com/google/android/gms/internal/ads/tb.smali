.class final synthetic Lcom/google/android/gms/internal/ads/tb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/xb;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->b:Lcom/google/android/gms/internal/ads/xb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->b:Lcom/google/android/gms/internal/ads/xb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xb;->b(Ljava/lang/String;)V

    return-void
.end method
