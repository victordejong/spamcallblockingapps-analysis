.class public Lcom/mopub/network/MoPubRequestQueue$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MoPubRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final synthetic d:Lcom/mopub/network/MoPubRequestQueue;


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/network/MoPubRequestQueue$c;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$c;->d:Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/mopub/network/MoPubRequestQueue$c;->a:I

    iput-object p4, p0, Lcom/mopub/network/MoPubRequestQueue$c;->b:Landroid/os/Handler;

    new-instance p3, Lcom/mopub/network/MoPubRequestQueue$c$a;

    invoke-direct {p3, p0, p1, p2}, Lcom/mopub/network/MoPubRequestQueue$c$a;-><init>(Lcom/mopub/network/MoPubRequestQueue$c;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V

    iput-object p3, p0, Lcom/mopub/network/MoPubRequestQueue$c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$c;->c:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/network/MoPubRequestQueue$c;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
