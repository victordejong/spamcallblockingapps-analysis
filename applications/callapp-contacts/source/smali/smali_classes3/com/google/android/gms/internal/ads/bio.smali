.class final synthetic Lcom/google/android/gms/internal/ads/bio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bio;->a:Lcom/google/android/gms/internal/ads/bih;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bio;->a:Lcom/google/android/gms/internal/ads/bih;

    .line 1049
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bih;->e:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->recordClick()V

    .line 1050
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bih;->f:Lcom/google/android/gms/internal/ads/vy;

    if-eqz v0, :cond_0

    .line 1051
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bih;->f:Lcom/google/android/gms/internal/ads/vy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vy;->c()V

    :cond_0
    return-void
.end method
