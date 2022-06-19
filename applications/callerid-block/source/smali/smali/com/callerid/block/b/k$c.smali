.class Lcom/callerid/block/b/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/k;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/b/k;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/k$c;->a:Lcom/callerid/block/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/k$c;->a:Lcom/callerid/block/b/k;

    invoke-static {v0}, Lcom/callerid/block/b/k;->c(Lcom/callerid/block/b/k;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v1, p0, Lcom/callerid/block/b/k$c;->a:Lcom/callerid/block/b/k;

    invoke-static {v1}, Lcom/callerid/block/b/k;->d(Lcom/callerid/block/b/k;)V

    iget-object v1, p0, Lcom/callerid/block/b/k$c;->a:Lcom/callerid/block/b/k;

    invoke-static {v1, p1, v0}, Lcom/callerid/block/b/k;->e(Lcom/callerid/block/b/k;Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    return-void
.end method
