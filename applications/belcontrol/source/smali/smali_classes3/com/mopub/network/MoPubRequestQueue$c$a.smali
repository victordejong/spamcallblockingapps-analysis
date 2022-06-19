.class public Lcom/mopub/network/MoPubRequestQueue$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/MoPubRequestQueue$c;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/volley/Request;

.field public final synthetic b:Lcom/mopub/network/MoPubRequestQueue$c;


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubRequestQueue$c;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iput-object p3, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->a:Lcom/mopub/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iget-object v0, v0, Lcom/mopub/network/MoPubRequestQueue$c;->d:Lcom/mopub/network/MoPubRequestQueue;

    invoke-static {v0}, Lcom/mopub/network/MoPubRequestQueue;->c(Lcom/mopub/network/MoPubRequestQueue;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->a:Lcom/mopub/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iget-object v0, v0, Lcom/mopub/network/MoPubRequestQueue$c;->d:Lcom/mopub/network/MoPubRequestQueue;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$c$a;->a:Lcom/mopub/volley/Request;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method
