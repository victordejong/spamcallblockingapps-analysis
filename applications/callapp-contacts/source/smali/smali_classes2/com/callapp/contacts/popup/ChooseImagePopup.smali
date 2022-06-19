.class public Lcom/callapp/contacts/popup/ChooseImagePopup;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data::",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;",
        ">",
        "Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TData;>;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TData;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;-><init>()V

    .line 26
    iput p1, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->a:I

    .line 27
    iput-object p2, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContentResId()I
    .locals 1

    const v0, 0x7f0d00cd

    return v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1202c0

    .line 54
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 59
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImagePopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ChooseImagePopup$1;-><init>(Lcom/callapp/contacts/popup/ChooseImagePopup;)V

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->a:I

    return v0
.end method

.method public setItemClickedListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setupViews(Landroid/view/View;)V
    .locals 6

    .line 37
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->setupViews(Landroid/view/View;)V

    const v0, 0x7f0a0740

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 40
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 41
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/callapp/contacts/popup/ChooseImagePopup;->d:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v4, 0x0

    const v5, 0x7f0d0089

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const v0, 0x7f0a022d

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0805ba

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a022e

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0805bc

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
