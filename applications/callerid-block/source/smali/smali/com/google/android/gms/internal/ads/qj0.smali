.class final synthetic Lcom/google/android/gms/internal/ads/qj0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/sj0;

.field private final c:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sj0;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj0;->b:Lcom/google/android/gms/internal/ads/sj0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qj0;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj0;->b:Lcom/google/android/gms/internal/ads/sj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj0;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sj0;->e(Landroid/view/ViewGroup;)V

    return-void
.end method
