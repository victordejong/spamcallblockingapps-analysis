.class final Lcom/google/android/gms/internal/ads/azw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bj;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bam;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/azv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azw;->c:Lcom/google/android/gms/internal/ads/azv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/bam;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azw;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azw;->c:Lcom/google/android/gms/internal/ads/azv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/bam;

    sget-object v2, Lcom/google/android/gms/internal/ads/azt;->a:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/azv;->a(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/bam;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azw;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bam;->onClick(Landroid/view/View;)V

    .line 4
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/bam;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bam;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 6
    return-void
.end method
