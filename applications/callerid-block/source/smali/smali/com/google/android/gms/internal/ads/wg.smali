.class final Lcom/google/android/gms/internal/ads/wg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/yg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg;->b:Lcom/google/android/gms/internal/ads/yg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wg;->b:Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yg;->i()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wg;->b:Lcom/google/android/gms/internal/ads/yg;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yg;->j(Lcom/google/android/gms/internal/ads/yg;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/l1;->n(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
