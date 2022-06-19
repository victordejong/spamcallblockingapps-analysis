.class abstract Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EditRowClickListener"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    .line 193
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->a:I

    .line 194
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->c:Ljava/lang/String;

    .line 195
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->d:Ljava/lang/String;

    .line 196
    iput p5, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    .line 201
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogEditText;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->a:I

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->d:Ljava/lang/String;

    iget v4, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->e:I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    .line 202
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->d:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method abstract getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.end method

.method getStartText()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;->c:Ljava/lang/String;

    return-object v0
.end method
