.class final Lcom/google/android/gms/internal/ads/zh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/za;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/za;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zh;->c:Lcom/google/android/gms/internal/ads/za;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zh;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zh;->c:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zh;->c:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zh;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zh;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zl;->a(II)V

    .line 4
    :cond_0
    return-void
.end method
