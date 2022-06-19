.class final synthetic Lcom/google/android/gms/internal/ads/blp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/blq;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/blq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blp;->a:Lcom/google/android/gms/internal/ads/blq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/blp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blp;->a:Lcom/google/android/gms/internal/ads/blq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/blp;->b:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blq;->b:Lcom/google/android/gms/internal/ads/zc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zc;->zzen(Ljava/lang/String;)V

    return-void
.end method
