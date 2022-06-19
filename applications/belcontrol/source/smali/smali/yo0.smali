.class public Lyo0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo0$c;,
        Lyo0$d;,
        Lyo0$b;
    }
.end annotation


# static fields
.field public static a:Lyo0$c;

.field public static b:Lyo0$c;

.field public static c:Lyo0$c;


# direct methods
.method public static A(Lcom/facebook/share/model/ShareMediaContent;Lyo0$c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->h()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p1, v0}, Lyo0$c;->d(Lcom/facebook/share/model/ShareMedia;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lri0;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot add more than %d media."

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lri0;

    const-string p1, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static B(Lcom/facebook/share/model/ShareMedia;Lyo0$c;)V
    .locals 3

    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lyo0$c;->m(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p0}, Lyo0$c;->p(Lcom/facebook/share/model/ShareVideo;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lri0;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Invalid media type: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static C(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->i()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->h()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lyo0;->O(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string v0, "Must specify url for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lri0;

    const-string v0, "Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Lcom/facebook/share/model/ShareOpenGraphAction;Lyo0$c;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lyo0$c;->l(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lri0;

    const-string p1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E(Lcom/facebook/share/model/ShareOpenGraphContent;Lyo0$c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->h()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyo0$c;->i(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->h()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lri0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found on the action. The name of the preview property must match the name of an action property."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lri0;

    const-string p1, "Must specify a previewPropertyName."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Ljava/lang/String;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lri0;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "Invalid key found in Open Graph dictionary: %s"

    invoke-direct {p1, p0, v0}, Lri0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lri0;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "Open Graph keys must be namespaced: %s"

    invoke-direct {p1, p0, v0}, Lri0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static G(Lcom/facebook/share/model/ShareOpenGraphObject;Lyo0$c;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lyo0$c;->l(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lyo0$c;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Lyo0;->F(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, p1}, Lyo0;->I(Ljava/lang/Object;Lyo0$c;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lri0;

    const-string p1, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v1, p1}, Lyo0;->I(Ljava/lang/Object;Lyo0$c;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static I(Ljava/lang/Object;Lyo0$c;)V
    .locals 1

    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {p1, p0}, Lyo0$c;->k(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lyo0$c;->m(Lcom/facebook/share/model/SharePhoto;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static J(Lcom/facebook/share/model/SharePhoto;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->e()Landroid/net/Uri;

    move-result-object p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lri0;

    const-string v0, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lri0;

    const-string v0, "Cannot share a null SharePhoto"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Lcom/facebook/share/model/SharePhotoContent;Lyo0$c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->h()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v0}, Lyo0$c;->m(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lri0;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot add more than %d photos."

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lri0;

    const-string p1, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V
    .locals 1

    invoke-static {p0}, Lyo0;->J(Lcom/facebook/share/model/SharePhoto;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->e()Landroid/net/Uri;

    move-result-object p0

    if-nez v0, :cond_1

    invoke-static {p0}, Lfn0;->S(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lyo0$c;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static M(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->L(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->e()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lfn0;->S(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lgn0;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static N(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V
    .locals 0

    invoke-static {p0}, Lyo0;->J(Lcom/facebook/share/model/SharePhoto;)V

    return-void
.end method

.method public static O(Lcom/facebook/share/model/ShareMessengerActionButton;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerActionButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-static {p0}, Lyo0;->R(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lri0;

    const-string v0, "Must specify title for ShareMessengerActionButton"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->h()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->h()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->h()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->a()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lyo0;->O(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string v0, "Must specify title for ShareMessengerGenericTemplateElement"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lri0;

    const-string v0, "Must specify element for ShareMessengerGenericTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lri0;

    const-string v0, "Must specify Page Id for ShareMessengerGenericTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->k()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lri0;

    const-string v0, "Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->i()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lyo0;->O(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    return-void

    :cond_2
    new-instance p0, Lri0;

    const-string v0, "Must specify Page Id for ShareMessengerMediaTemplateContent"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static R(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->e()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string v0, "Must specify url for ShareMessengerURLActionButton"

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S(Lcom/facebook/share/model/ShareStoryContent;Lyo0$c;)V
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->i()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->k()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->i()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->i()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyo0$c;->d(Lcom/facebook/share/model/ShareMedia;)V

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->k()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->k()Lcom/facebook/share/model/SharePhoto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyo0$c;->m(Lcom/facebook/share/model/SharePhoto;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lri0;

    const-string p1, "Must pass the Facebook app a background asset, a sticker asset, or both"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T(Lcom/facebook/share/model/ShareVideo;Lyo0$c;)V
    .locals 0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->c()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lfn0;->N(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lfn0;->P(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "ShareVideo must reference a video that is on the device"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lri0;

    const-string p1, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lri0;

    const-string p1, "Cannot share a null ShareVideo"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static U(Lcom/facebook/share/model/ShareVideoContent;Lyo0$c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->k()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyo0$c;->p(Lcom/facebook/share/model/ShareVideo;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->j()Lcom/facebook/share/model/SharePhoto;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lyo0$c;->m(Lcom/facebook/share/model/SharePhoto;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/model/ShareMediaContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->A(Lcom/facebook/share/model/ShareMediaContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic b(Lcom/facebook/share/model/ShareCameraEffectContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->u(Lcom/facebook/share/model/ShareCameraEffectContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/facebook/share/model/ShareOpenGraphContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->E(Lcom/facebook/share/model/ShareOpenGraphContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic d(Lcom/facebook/share/model/ShareOpenGraphAction;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->D(Lcom/facebook/share/model/ShareOpenGraphAction;Lyo0$c;)V

    return-void
.end method

.method public static synthetic e(Lcom/facebook/share/model/ShareOpenGraphObject;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->G(Lcom/facebook/share/model/ShareOpenGraphObject;Lyo0$c;)V

    return-void
.end method

.method public static synthetic f(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lyo0$c;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyo0;->H(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lyo0$c;Z)V

    return-void
.end method

.method public static synthetic g(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->M(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V

    return-void
.end method

.method public static synthetic h(Lcom/facebook/share/model/ShareVideo;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->T(Lcom/facebook/share/model/ShareVideo;Lyo0$c;)V

    return-void
.end method

.method public static synthetic i(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 0

    invoke-static {p0}, Lyo0;->C(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    return-void
.end method

.method public static synthetic j(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 0

    invoke-static {p0}, Lyo0;->P(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    return-void
.end method

.method public static synthetic k(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 0

    invoke-static {p0}, Lyo0;->Q(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    return-void
.end method

.method public static synthetic l(Lcom/facebook/share/model/ShareStoryContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->S(Lcom/facebook/share/model/ShareStoryContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic m(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->N(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V

    return-void
.end method

.method public static synthetic n(Lcom/facebook/share/model/ShareLinkContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->z(Lcom/facebook/share/model/ShareLinkContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic o(Lcom/facebook/share/model/SharePhotoContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->K(Lcom/facebook/share/model/SharePhotoContent;Lyo0$c;)V

    return-void
.end method

.method public static synthetic p(Lcom/facebook/share/model/ShareVideoContent;Lyo0$c;)V
    .locals 0

    invoke-static {p0, p1}, Lyo0;->U(Lcom/facebook/share/model/ShareVideoContent;Lyo0$c;)V

    return-void
.end method

.method public static q()Lyo0$c;
    .locals 2

    sget-object v0, Lyo0;->b:Lyo0$c;

    if-nez v0, :cond_0

    new-instance v0, Lyo0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyo0$c;-><init>(Lyo0$a;)V

    sput-object v0, Lyo0;->b:Lyo0$c;

    :cond_0
    sget-object v0, Lyo0;->b:Lyo0$c;

    return-object v0
.end method

.method public static r()Lyo0$c;
    .locals 2

    sget-object v0, Lyo0;->c:Lyo0$c;

    if-nez v0, :cond_0

    new-instance v0, Lyo0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyo0$b;-><init>(Lyo0$a;)V

    sput-object v0, Lyo0;->c:Lyo0$c;

    :cond_0
    sget-object v0, Lyo0;->c:Lyo0$c;

    return-object v0
.end method

.method public static s()Lyo0$c;
    .locals 2

    sget-object v0, Lyo0;->a:Lyo0$c;

    if-nez v0, :cond_0

    new-instance v0, Lyo0$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyo0$d;-><init>(Lyo0$a;)V

    sput-object v0, Lyo0;->a:Lyo0$c;

    :cond_0
    sget-object v0, Lyo0;->a:Lyo0$c;

    return-object v0
.end method

.method public static t(Lcom/facebook/share/model/ShareContent;Lyo0$c;)V
    .locals 1

    if-eqz p0, :cond_a

    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p1, p0}, Lyo0$c;->c(Lcom/facebook/share/model/ShareLinkContent;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p1, p0}, Lyo0$c;->n(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p1, p0}, Lyo0$c;->q(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p1, p0}, Lyo0$c;->j(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p1, p0}, Lyo0$c;->e(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p1, p0}, Lyo0$c;->b(Lcom/facebook/share/model/ShareCameraEffectContent;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p1, p0}, Lyo0$c;->h(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p1, p0}, Lyo0$c;->g(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p1, p0}, Lyo0$c;->f(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p1, p0}, Lyo0$c;->o(Lcom/facebook/share/model/ShareStoryContent;)V

    :cond_9
    :goto_0
    return-void

    :cond_a
    new-instance p0, Lri0;

    const-string p1, "Must provide non-null content to share"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Lcom/facebook/share/model/ShareCameraEffectContent;Lyo0$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "Must specify a non-empty effectId"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    invoke-static {}, Lyo0;->q()Lyo0$c;

    move-result-object v0

    invoke-static {p0, v0}, Lyo0;->t(Lcom/facebook/share/model/ShareContent;Lyo0$c;)V

    return-void
.end method

.method public static w(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    invoke-static {}, Lyo0;->q()Lyo0$c;

    move-result-object v0

    invoke-static {p0, v0}, Lyo0;->t(Lcom/facebook/share/model/ShareContent;Lyo0$c;)V

    return-void
.end method

.method public static x(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    invoke-static {}, Lyo0;->r()Lyo0$c;

    move-result-object v0

    invoke-static {p0, v0}, Lyo0;->t(Lcom/facebook/share/model/ShareContent;Lyo0$c;)V

    return-void
.end method

.method public static y(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    invoke-static {}, Lyo0;->s()Lyo0$c;

    move-result-object v0

    invoke-static {p0, v0}, Lyo0;->t(Lcom/facebook/share/model/ShareContent;Lyo0$c;)V

    return-void
.end method

.method public static z(Lcom/facebook/share/model/ShareLinkContent;Lyo0$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->j()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lfn0;->S(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lri0;

    const-string p1, "Image Url must be an http:// or https:// url"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
