.class final synthetic Lcom/google/android/gms/internal/ads/bin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eeg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bin;->a:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bin;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/eeh;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eeh;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/afe;->a(II)V

    return-void
.end method
