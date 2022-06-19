.class public Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->g:I

    .line 21
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->g:I

    .line 21
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->h:Z

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->e:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->f:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 43
    iput-object p8, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 44
    iput p5, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->g:I

    .line 45
    iput-boolean p6, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->h:Z

    .line 46
    invoke-virtual {p0, p9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 33
    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d00e1

    return v0
.end method

.method protected getMessage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 71
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getLayoutResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method protected setMessage(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->b:Ljava/lang/String;

    return-void
.end method

.method protected setNegativeBtnText(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->f:Ljava/lang/String;

    return-void
.end method

.method protected setNegativeListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method protected setPositiveBtnText(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->e:Ljava/lang/String;

    return-void
.end method

.method protected setPositiveListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 14

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0a48

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->h:Z

    const v5, 0x7f0a0318

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v10

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->g:I

    const v11, 0x7f0a0315

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    return-void
.end method
