.class final Lcom/google/android/gms/ads/internal/util/v1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/jx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/c2;Lcom/google/android/gms/internal/ads/jx;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/v1;->a:Lcom/google/android/gms/internal/ads/jx;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/v1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/v1;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/v1;->a:Lcom/google/android/gms/internal/ads/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jx;->c()Landroidx/browser/customtabs/e;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/browser/customtabs/c$a;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/c$a;-><init>(Landroidx/browser/customtabs/e;)V

    .line 3
    invoke-virtual {v1}, Landroidx/browser/customtabs/c$a;->a()Landroidx/browser/customtabs/c;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/v1;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qj3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/v1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/v1;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/v1;->a:Lcom/google/android/gms/internal/ads/jx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/v1;->b:Landroid/content/Context;

    .line 6
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jx;->b(Landroid/app/Activity;)V

    return-void
.end method
