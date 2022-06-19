.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddressDataHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    .line 410
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object p2

    .line 422
    :cond_1
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;

    const v2, 0x7f1204a7

    const v0, 0x7f12054d

    .line 424
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x70

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x7f1204a7

    const v1, 0x7f0802c9

    .line 443
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;->a(Ljava/lang/String;IILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    :cond_2
    return-void
.end method
