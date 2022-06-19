.class public Lcom/callapp/contacts/popup/contact/DialogList;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:Landroid/widget/ListAdapter;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/AdapterView$OnItemClickListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

.field private k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const v0, 0x7f1204ea

    .line 26
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->f:Ljava/lang/String;

    const v0, 0x7f1201a9

    .line 27
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->g:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->rounded:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->j:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->a:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->b:Z

    return-void
.end method

.method private getFooterView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private setupBottomBar(Landroid/view/View;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->h:Landroid/view/View$OnClickListener;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->i:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const v0, 0x7f0a030e

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v0, 0x7f0a0318

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->h:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const v0, 0x7f0a0315

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->i:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 110
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 113
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->c:Landroid/widget/ListAdapter;

    .line 53
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->j:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d00d6

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->a:Ljava/lang/String;

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p1, p2, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    const p2, 0x7f0a0586

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    .line 68
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->c:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p2, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-boolean p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->b:Z

    if-eqz p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogList;->getFooterView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 80
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogList;->getFooterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 83
    :cond_2
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setupBottomBar(Landroid/view/View;)V

    .line 85
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogList;->k:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogList;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/popup/contact/DialogList;->a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->k:Ljava/lang/Integer;

    return-void
.end method

.method public setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->j:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-void
.end method

.method public setOnCancelButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogList;->i:Landroid/view/View$OnClickListener;

    return-void
.end method
