.class final synthetic Lcom/google/android/gms/internal/ads/cmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cmt;

.field private final b:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cmt;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmx;->a:Lcom/google/android/gms/internal/ads/cmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmx;->a:Lcom/google/android/gms/internal/ads/cmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmt;->a:Lcom/google/android/gms/internal/ads/cmr;

    .line 1075
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmr;->c:Lcom/google/android/gms/internal/ads/cnc;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
