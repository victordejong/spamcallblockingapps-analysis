.class final Lcom/google/android/gms/internal/ads/aeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/act;

.field private b:Lcom/google/android/gms/ads/internal/overlay/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/ads/internal/overlay/o;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeq;->a:Lcom/google/android/gms/internal/ads/act;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->d()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeq;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->o()V

    .line 7
    return-void
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public final h_()V
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->h_()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeq;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->n()V

    .line 10
    return-void
.end method
