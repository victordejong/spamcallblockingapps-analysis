.class public Lcom/allinone/callerid/d/f/b/c;
.super Lcom/bumptech/glide/load/j/b;
.source "FileBridgeResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/j/b<",
        "Lcom/allinone/callerid/d/f/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/d/f/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/j/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/load/j/b;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/j/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/d/f/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/f/b/b;->b(Z)V

    return-void
.end method
