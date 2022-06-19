.class Lcom/callerid/block/b/k$d;
.super Lcom/google/android/gms/ads/b;
.source ""


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

    iput-object p1, p0, Lcom/callerid/block/b/k$d;->a:Lcom/callerid/block/b/k;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/b;->s()V

    iget-object v0, p0, Lcom/callerid/block/b/k$d;->a:Lcom/callerid/block/b/k;

    invoke-static {v0}, Lcom/callerid/block/b/k;->f(Lcom/callerid/block/b/k;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/k$d;->a:Lcom/callerid/block/b/k;

    invoke-static {v0}, Lcom/callerid/block/b/k;->g(Lcom/callerid/block/b/k;)V

    :cond_0
    return-void
.end method
