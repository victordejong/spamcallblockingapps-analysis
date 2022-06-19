.class final Lcom/google/android/gms/internal/ads/dtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dtn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtq;->a:Lcom/google/android/gms/internal/ads/dtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtq;->a:Lcom/google/android/gms/internal/ads/dtn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtn;->a(Lcom/google/android/gms/internal/ads/dtn;)V

    return-void
.end method
