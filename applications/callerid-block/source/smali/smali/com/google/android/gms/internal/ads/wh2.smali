.class final Lcom/google/android/gms/internal/ads/wh2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xh2;III)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/wh2;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/wh2;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/wh2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/xh2;->t()Lcom/google/android/gms/internal/ads/cd2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/wh2;->b:I

    int-to-long v4, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/wh2;->c:I

    int-to-float v7, v1

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/wh2;->d:I

    int-to-float v8, v1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cd2;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/xh2;->u()Lcom/google/android/gms/internal/ads/et1;

    move-result-object v1

    const/16 v2, 0x7e6

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/et1;->d(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
