.class final synthetic Lcom/google/android/gms/internal/ads/jm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/wm;

.field private final c:Lcom/google/android/gms/internal/ads/vm;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wm;Lcom/google/android/gms/internal/ads/vm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jm;->b:Lcom/google/android/gms/internal/ads/wm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jm;->c:Lcom/google/android/gms/internal/ads/vm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jm;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jm;->b:Lcom/google/android/gms/internal/ads/wm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jm;->c:Lcom/google/android/gms/internal/ads/vm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wm;->x(Lcom/google/android/gms/internal/ads/vm;Ljava/lang/String;)V

    return-void
.end method
