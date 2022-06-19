.class public final Lcom/google/android/gms/internal/ads/bix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/asg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aw:Lcom/google/android/gms/internal/ads/af;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->onPause()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->onResume()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    :cond_0
    return-void
.end method
