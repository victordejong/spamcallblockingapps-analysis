.class final Lcom/google/android/gms/internal/ads/aee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzbft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aee;->a:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aee;->a:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbft;->a(Lcom/google/android/gms/internal/ads/zzbft;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    return-void
.end method
