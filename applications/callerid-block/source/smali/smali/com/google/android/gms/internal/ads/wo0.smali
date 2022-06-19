.class public final Lcom/google/android/gms/internal/ads/wo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/l80;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final m(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/jt;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->destroy()V

    :cond_0
    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/jt;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->onResume()V

    :cond_0
    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/jt;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->onPause()V

    :cond_0
    return-void
.end method
