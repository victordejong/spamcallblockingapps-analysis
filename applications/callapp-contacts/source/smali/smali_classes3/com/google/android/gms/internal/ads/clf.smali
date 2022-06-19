.class final synthetic Lcom/google/android/gms/internal/ads/clf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cld;

.field private final b:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cld;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clf;->a:Lcom/google/android/gms/internal/ads/cld;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clf;->b:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clf;->a:Lcom/google/android/gms/internal/ads/cld;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clf;->b:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 1095
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clb;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bza;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
