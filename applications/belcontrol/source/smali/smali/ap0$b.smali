.class public final Lap0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfn0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->e(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfn0$d<",
        "Lcom/facebook/share/model/ShareMedia;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lap0$b;->a:Ljava/util/UUID;

    iput-object p2, p0, Lap0$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lap0$b;->a:Ljava/util/UUID;

    invoke-static {v0, p1}, Lap0;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lym0$b;

    move-result-object v0

    iget-object v1, p0, Lap0$b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->a()Lcom/facebook/share/model/ShareMedia$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lym0$b;->g()Ljava/lang/String;

    move-result-object p1

    const-string v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lym0$b;->h()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lap0;->o(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extension"

    invoke-static {v1, v0, p1}, Lfn0;->e0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lap0$b;->a(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
