.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BirthDateDataHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;IILcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object p1

    .line 254
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;Lcom/callapp/common/model/json/JSONDate;)V

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->toCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/date/DateUtils;->a(JZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f1204a8

    const v1, 0x7f0802f1

    .line 289
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;->a(Ljava/lang/String;IILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    :cond_2
    return-void
.end method
