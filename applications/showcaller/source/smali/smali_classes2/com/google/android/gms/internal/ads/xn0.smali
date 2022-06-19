.class final synthetic Lcom/google/android/gms/internal/ads/xn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/do0;

.field private final e:Landroid/view/View;

.field private final f:Lcom/google/android/gms/internal/ads/hf0;

.field private final g:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/do0;Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xn0;->d:Lcom/google/android/gms/internal/ads/do0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xn0;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xn0;->f:Lcom/google/android/gms/internal/ads/hf0;

    iput p4, p0, Lcom/google/android/gms/internal/ads/xn0;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xn0;->d:Lcom/google/android/gms/internal/ads/do0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xn0;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xn0;->f:Lcom/google/android/gms/internal/ads/hf0;

    iget v3, p0, Lcom/google/android/gms/internal/ads/xn0;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/do0;->p(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    return-void
.end method
