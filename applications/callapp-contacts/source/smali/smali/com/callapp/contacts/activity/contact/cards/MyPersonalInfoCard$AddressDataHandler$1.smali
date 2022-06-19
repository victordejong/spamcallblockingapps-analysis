.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>.EditRowClick",
        "Listener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;

    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
    .locals 1

    .line 428
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;)V

    return-object v0
.end method
