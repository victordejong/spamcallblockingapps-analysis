.class final Lcom/google/android/gms/internal/ads/crk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clf;III)V
    .locals 0

    .prologue
    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/crk;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/crk;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/crk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/clf;->a()Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v8

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/crk;->a:I

    int-to-long v2, v2

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/ads/crk;->b:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/crk;->c:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-void

    .line 4
    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/clf;->b()Lcom/google/android/gms/internal/ads/clq;

    move-result-object v1

    const/16 v2, 0x7e6

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_0
.end method
