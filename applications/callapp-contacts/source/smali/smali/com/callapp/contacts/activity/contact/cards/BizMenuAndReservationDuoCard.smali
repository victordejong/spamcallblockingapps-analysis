.class public Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;
.super Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;,
        Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;
    }
.end annotation


# static fields
.field private static final bizMenuListenFields:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private static final reservationListenField:Lcom/callapp/contacts/model/contact/ContactField;


# instance fields
.field private final bizMenuHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;

.field private final reservationHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->menuUrl:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->bizMenuListenFields:Ljava/util/EnumSet;

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->reserveUrl:Lcom/callapp/contacts/model/contact/ContactField;

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->reservationListenField:Lcom/callapp/contacts/model/contact/ContactField;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 25
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->getLeftItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;-><init>(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->bizMenuHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;

    .line 26
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->getRightItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;-><init>(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->reservationHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method public static shouldShowDescrptionAsBizMenu(Ljava/lang/String;I)Z
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->reservationListenField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->bizMenuListenFields:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->bizMenuListenFields:Ljava/util/EnumSet;

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->bizMenuHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->reservationListenField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->reservationHelper:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_1
    return-void
.end method
