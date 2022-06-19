.class final Lcom/google/android/gms/internal/ads/ng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->a:Lcom/google/android/gms/internal/ads/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->a:Lcom/google/android/gms/internal/ads/nd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nd;->b()Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ng;->a:Lcom/google/android/gms/internal/ads/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/nd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    return-void
.end method
