.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;


# instance fields
.field private final i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p2

    move-object v7, p7

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;-><init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 33
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    new-instance p3, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)V

    invoke-direct {p1, p7, p2, p6, p3}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;-><init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;)V

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    .line 42
    invoke-virtual {p0, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->setListener(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->setDismissOnDone(Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->j:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1202ad

    .line 28
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    invoke-interface {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->isBottomBarCheckBoxChecked()Z

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;IZ)V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 48
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a030e

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)V

    const v1, 0x7f12068d

    .line 58
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0317

    .line 51
    invoke-virtual {p0, p2, v0, v2, v1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->j:Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f0a0318

    .line 60
    invoke-virtual {p0, p2, v0, v1, v0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->setCancelable(Z)V

    .line 63
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->i:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    const v0, 0x7f0a03d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/widget/CompoundEditText;)V

    return-object p1
.end method
