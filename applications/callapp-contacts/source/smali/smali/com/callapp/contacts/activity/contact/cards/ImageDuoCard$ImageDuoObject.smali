.class public Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageDuoObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;,
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;,
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

.field private final g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)V
    .locals 2

    .line 203
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    .line 204
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    .line 205
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 0

    .line 1209
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 0

    .line 1221
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 3

    .line 2217
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2225
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->g:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 3

    .line 2229
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3213
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method
