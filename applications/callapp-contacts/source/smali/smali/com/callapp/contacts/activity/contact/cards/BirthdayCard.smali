.class public Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private birthdayText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private getBirthdayText(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 9

    .line 112
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONDate;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 121
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 123
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v5, -0x7

    const/4 v6, 0x5

    .line 126
    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 127
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/16 v7, 0x11

    .line 130
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 131
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 138
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const v5, 0x7f1200f1

    const/4 v7, 0x2

    cmp-long v8, v0, v2

    if-nez v8, :cond_2

    const v0, 0x7f120723

    .line 140
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object p1

    new-array v2, v6, [C

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object v0, v1, v4

    invoke-static {v5, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    if-lez v8, :cond_4

    const-wide/16 v2, 0x1

    cmp-long v8, v0, v2

    if-nez v8, :cond_3

    const v0, 0x7f120100

    .line 143
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v2, 0x7f120102

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v1, v7, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object p1

    new-array v2, v6, [C

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object v0, v1, v4

    invoke-static {v5, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_5

    const v0, 0x7f120103

    .line 146
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const v2, 0x7f120101

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const v1, 0x7f1200f2

    new-array v2, v7, [Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object p1

    new-array v3, v6, [C

    invoke-static {p1, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method private setInitialCardDetails()V
    .locals 3

    .line 76
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1338
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0800f9

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2333
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->birthdayText:Ljava/lang/String;

    .line 2357
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v1, 0x7f1300f2

    .line 2362
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    const v1, 0x7f1200f0

    .line 80
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2372
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const/4 v1, 0x4

    .line 2474
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    const v1, 0x7f08039d

    .line 82
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;)V

    .line 3342
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    const v1, 0x7f130118

    .line 3377
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->h:I

    .line 108
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V

    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->getBirthdayText(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->birthdayText:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->setInitialCardDetails()V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->showCard(Z)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->hideCard()V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method
