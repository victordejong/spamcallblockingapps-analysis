.class public Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# static fields
.field private static final ADDRESS_POSITION:I = 0xbb8

.field private static final BIRTHDAY_POSITION:I = 0x3e8

.field private static final EMAIL_ADD_POSITION:I = 0x0

.field private static final WEBSITE_POSITION:I = 0x7d0


# instance fields
.field private cleanUrlsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastEmailOffset:I

.field private lastWebsiteOffset:I

.field private multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

.field private shouldAutoExpand:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->cleanUrlsMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    .line 55
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-eqz p2, :cond_0

    .line 63
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->setGoogleMapsCard(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideCard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldAutoExpand:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideCard()V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->openViewLocationActivity(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getCleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->cleanUrlsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 361
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 368
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->cleanUrlsMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method private openViewLocationActivity(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "geo:0,0?q="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 380
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private refreshListData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f0601ec

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 186
    :goto_0
    iget v5, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    if-ge v0, v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    add-int/lit8 v6, v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iput v4, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getVisibleEmails()Ljava/util/Collection;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/common/model/json/JSONEmail;

    .line 194
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;

    invoke-direct {v6, p0, v5, p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/common/model/json/JSONEmail;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 205
    new-instance v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 206
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 1357
    iput-object v5, v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 1392
    iput v2, v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 2342
    iput-object v6, v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    const v5, 0x7f08039d

    .line 209
    invoke-virtual {v7, v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v5

    .line 2397
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 212
    iget v6, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    if-eqz v6, :cond_1

    .line 2474
    iput v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    iget v7, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v5, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastEmailOffset:I

    goto :goto_1

    .line 223
    :cond_2
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 231
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 235
    :goto_2
    new-instance v7, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;

    invoke-direct {v7, p0, v6}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Ljava/lang/String;)V

    .line 250
    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v8}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    new-array v9, v4, [C

    .line 251
    invoke-static {v6, v9}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v6

    .line 3357
    iput-object v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 3372
    iput-object v0, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const v0, 0x7f0803cc

    .line 253
    invoke-virtual {v8, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    .line 3392
    iput v2, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 3397
    iput-object v7, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 4342
    iput-object v7, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 258
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_4
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 268
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 292
    new-instance v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 293
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONDate;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(JZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4357
    iput-object v0, v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v0, 0x7f0802f1

    .line 294
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    .line 4397
    iput-object v6, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 5342
    iput-object v6, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 298
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_5
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 303
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->cleanUrlsMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    const/4 p2, 0x0

    .line 304
    :goto_3
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    if-ge p2, v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    add-int/lit16 v5, p2, 0x7d0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 307
    :cond_6
    iput v4, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    .line 309
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsites()Ljava/util/Collection;

    move-result-object p1

    .line 310
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 311
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/common/model/json/JSONWebsite;

    .line 313
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/common/model/json/JSONWebsite;)V

    .line 322
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 323
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v6

    .line 5357
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v6, 0x7f0803fb

    .line 324
    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v5

    .line 5392
    iput v2, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 5397
    iput-object v0, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 6342
    iput-object v0, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 329
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    if-eqz v0, :cond_8

    .line 6474
    iput v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 334
    :cond_8
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x7d0

    const/16 v6, 0x7d0

    .line 335
    :goto_5
    iget v7, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    add-int/2addr v7, v0

    if-ge v6, v7, :cond_a

    .line 336
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    invoke-static {v7, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 p2, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_7

    .line 347
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    iget v6, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->lastWebsiteOffset:I

    goto :goto_4

    :cond_b
    return-void
.end method


# virtual methods
.method public autoExpand()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldAutoExpand:Z

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;
    .locals 3

    .line 397
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Contact info card expanded"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public hideWhenExceedMaxCards()Z
    .locals 3

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldStartHidden:Z

    .line 80
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return v0
.end method

.method public isSwipeable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 162
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldStartHidden:Z

    .line 163
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldAutoExpand:Z

    .line 164
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideCard()V

    .line 168
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->refreshListData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->data:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x1

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->updateCardData(Ljava/util/Collection;Z)V

    .line 174
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldStartHidden:Z

    if-nez p2, :cond_3

    .line 175
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->showCard(Z)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideCard()V

    .line 181
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 157
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideCard()V

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMultiCardExpended(Z)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showExpendFooter()Z
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showShouldExpandButton()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->getFooterData()Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
