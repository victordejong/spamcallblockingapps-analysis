.class Lcom/callerid/block/main/MainActivity$i;
.super Lcom/google/android/gms/ads/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$i;->a:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lcom/google/android/gms/ads/j;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/b;->m(Lcom/google/android/gms/ads/j;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$i;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public p()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/b;->p()V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$i;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$i;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->B0(Lcom/callerid/block/main/MainActivity;)V

    return-void
.end method

.method public s()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/b;->s()V

    return-void
.end method
