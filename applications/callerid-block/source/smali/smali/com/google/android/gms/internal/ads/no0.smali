.class final synthetic Lcom/google/android/gms/internal/ads/no0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xs2;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/no0;->b:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final R(Lcom/google/android/gms/internal/ads/ws2;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/no0;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws2;->d:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/wu;->Z(IIZ)V

    return-void
.end method
