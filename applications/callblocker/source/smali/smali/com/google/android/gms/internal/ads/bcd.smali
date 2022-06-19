.class final synthetic Lcom/google/android/gms/internal/ads/bcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/act;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(IIZ)V

    .line 4
    return-void
.end method
