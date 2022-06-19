.class final Lcom/mopub/network/MoPubRequestQueue$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MoPubRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Handler;

.field final c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/mopub/network/MoPubRequestQueue;


# direct methods
.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/network/MoPubRequestQueue$a;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$a;->d:Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p3, p0, Lcom/mopub/network/MoPubRequestQueue$a;->a:I

    .line 145
    iput-object p4, p0, Lcom/mopub/network/MoPubRequestQueue$a;->b:Landroid/os/Handler;

    .line 146
    new-instance p3, Lcom/mopub/network/MoPubRequestQueue$a$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/mopub/network/MoPubRequestQueue$a$1;-><init>(Lcom/mopub/network/MoPubRequestQueue$a;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V

    iput-object p3, p0, Lcom/mopub/network/MoPubRequestQueue$a;->c:Ljava/lang/Runnable;

    return-void
.end method
