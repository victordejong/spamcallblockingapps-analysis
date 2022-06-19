.class public Lcom/callapp/contacts/action/shared/ShareDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->b:Landroid/widget/ListAdapter;

    .line 30
    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 50
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d026b

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->a:Ljava/lang/String;

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p1, p2, v1}, Lcom/callapp/contacts/action/shared/ShareDialog;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    const p2, 0x7f0a0586

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->c:Landroid/widget/ListView;

    .line 42
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0, p2, v1}, Lcom/callapp/contacts/action/shared/ShareDialog;->a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDialog;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/action/shared/ShareDialog;->a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
