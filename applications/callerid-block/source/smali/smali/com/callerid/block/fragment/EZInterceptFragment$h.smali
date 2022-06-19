.class Lcom/callerid/block/fragment/EZInterceptFragment$h;
.super Lcom/google/android/gms/ads/w/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$h;->a:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {p0}, Lcom/google/android/gms/ads/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/w/a;

    invoke-virtual {p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment$h;->c(Lcom/google/android/gms/ads/w/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/w/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$h;->a:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/w/a;->d(Landroid/app/Activity;)V

    return-void
.end method
