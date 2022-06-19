.class public Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLinearListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    const/4 p1, 0x0

    .line 309
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 300
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->c:Z

    const-string p1, "layout_inflater"

    .line 311
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getFooterLayoutId()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1349
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getFooterLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1350
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p2

    .line 1351
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1353
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 1356
    :goto_0
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    if-nez p2, :cond_0

    .line 322
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getChildLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 323
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {p3, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p3

    .line 324
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {v0, p3, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Ljava/lang/Object;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)V

    if-eqz p2, :cond_1

    .line 333
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getOnItemClickListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 334
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->c:Z

    if-nez v0, :cond_0

    .line 390
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    const/4 p1, 0x1

    .line 392
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->c:Z

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 398
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->c:Z

    return-void

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 402
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->c:Z

    return-void
.end method
