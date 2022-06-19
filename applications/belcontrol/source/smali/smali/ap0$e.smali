.class public final Lap0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfn0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->j(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfn0$d<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lym0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lap0$e;->a:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/SharePhoto;)Lym0$b;
    .locals 1

    iget-object v0, p0, Lap0$e;->a:Ljava/util/UUID;

    invoke-static {v0, p1}, Lap0;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lym0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lap0$e;->a(Lcom/facebook/share/model/SharePhoto;)Lym0$b;

    move-result-object p1

    return-object p1
.end method
