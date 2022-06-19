.class final Lcom/google/android/gms/ads/internal/util/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/j4;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/l4;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/l1;Lcom/google/android/gms/internal/ads/l4;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/f1;->a:Lcom/google/android/gms/internal/ads/l4;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/f1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/f1;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/f1;->a:Lcom/google/android/gms/internal/ads/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l4;->c()Landroidx/browser/customtabs/e;

    move-result-object v0

    new-instance v1, Landroidx/browser/customtabs/c$a;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/c$a;-><init>(Landroidx/browser/customtabs/e;)V

    invoke-virtual {v1}, Landroidx/browser/customtabs/c$a;->a()Landroidx/browser/customtabs/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/f1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/f1;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/f1;->a:Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/f1;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/l4;->b(Landroid/app/Activity;)V

    return-void
.end method
