.class final synthetic Lcom/google/android/gms/internal/ads/kt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/qt;

.field private final c:Landroid/view/View;

.field private final d:Lcom/google/android/gms/internal/ads/tl;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qt;Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kt;->b:Lcom/google/android/gms/internal/ads/qt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kt;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kt;->d:Lcom/google/android/gms/internal/ads/tl;

    iput p4, p0, Lcom/google/android/gms/internal/ads/kt;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kt;->b:Lcom/google/android/gms/internal/ads/qt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kt;->d:Lcom/google/android/gms/internal/ads/tl;

    iget v3, p0, Lcom/google/android/gms/internal/ads/kt;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/qt;->f(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    return-void
.end method
