.class final Lcom/google/android/gms/internal/ads/ha0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/ja0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ja0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ha0;->d:Lcom/google/android/gms/internal/ads/ja0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha0;->d:Lcom/google/android/gms/internal/ads/ja0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ja0;->j()Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha0;->d:Lcom/google/android/gms/internal/ads/ja0;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ja0;->h(Lcom/google/android/gms/internal/ads/ja0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/c2;->p(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
