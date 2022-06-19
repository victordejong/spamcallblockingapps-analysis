.class public Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

.field private b:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->b:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    return-object p0
.end method

.method private getNegativeOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 122
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)V

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    return-object v0
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201a9

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 135
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204ea

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 92
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)V

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    const p2, 0x7f0d00da

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0a45

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0601ec

    .line 58
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a060c

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 63
    new-instance v0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->f:Ljava/util/ArrayList;

    const v3, 0x7f0d0096

    invoke-direct {v0, v1, v3, v2}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f060088

    .line 67
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const v0, 0x7f0a0318

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getPositiveOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0315

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getNegativeBtnText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getNegativeOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 81
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method
