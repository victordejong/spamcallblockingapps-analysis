.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
    .locals 1

    .line 474
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;)V

    return-object v0
.end method
