.class public final Lcom/facebook/share/model/SharePhoto$b;
.super Lcom/facebook/share/model/ShareMedia$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$a<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/net/Uri;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$a;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/facebook/share/model/SharePhoto$b;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/facebook/share/model/SharePhoto$b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic f(Lcom/facebook/share/model/SharePhoto$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/facebook/share/model/SharePhoto$b;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic g(Lcom/facebook/share/model/SharePhoto$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/share/model/SharePhoto$b;->d:Z

    return p0
.end method

.method public static synthetic h(Lcom/facebook/share/model/SharePhoto$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/share/model/SharePhoto$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static n(Landroid/os/Parcel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/share/model/ShareMedia$a;->c(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareMedia;

    instance-of v2, v1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static s(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/share/model/ShareMedia;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareMedia;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public i()Lcom/facebook/share/model/SharePhoto;
    .locals 2

    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$b;Lcom/facebook/share/model/SharePhoto$a;)V

    return-object v0
.end method

.method public j()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public k()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$b;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public l(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$b;
    .locals 1

    const-class v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$b;->m(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$b;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$b;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$a;->b(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$a;

    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/SharePhoto$b;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$b;->o(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$b;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$b;->q(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$b;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$b;->r(Z)Lcom/facebook/share/model/SharePhoto$b;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$b;->p(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$b;

    return-object v0
.end method

.method public o(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public q(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$b;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public r(Z)Lcom/facebook/share/model/SharePhoto$b;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/share/model/SharePhoto$b;->d:Z

    return-object p0
.end method
