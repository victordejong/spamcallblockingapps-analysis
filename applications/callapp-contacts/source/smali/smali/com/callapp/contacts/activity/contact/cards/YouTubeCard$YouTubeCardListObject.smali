.class public Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YouTubeCardListObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    .line 168
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->a:Ljava/lang/String;

    .line 169
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->g:Ljava/lang/String;

    .line 170
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    .line 180
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
