.class public Lcom/callapp/contacts/popup/contact/AdapterGridView;
.super Lcom/callapp/contacts/activity/base/BaseArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;,
        Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseArrayAdapter<",
        "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;-><init>(Ljava/util/List;)V

    .line 29
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView;->a:Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/AdapterGridView;)Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView;->a:Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 61
    new-instance p2, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;-><init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;Lcom/callapp/contacts/popup/contact/AdapterGridView$1;)V

    const v0, 0x7f0a0090

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0a008f

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a008e

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->c:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    .line 20
    check-cast p3, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;

    if-eqz p3, :cond_1

    .line 1043
    iget-object p2, p3, Lcom/callapp/contacts/model/widget/WidgetMetaData;->label:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1044
    iget-object p2, p1, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/callapp/contacts/model/widget/WidgetMetaData;->label:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object p2, p1, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1048
    :cond_0
    new-instance p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p1, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->b:Landroid/widget/ImageView;

    iget v1, p3, Lcom/callapp/contacts/model/widget/WidgetMetaData;->primaryIconResId:I

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 1049
    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->c:Landroid/view/ViewGroup;

    new-instance p2, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;-><init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;Lcom/callapp/contacts/model/widget/WidgetMetaData;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public getLayoutResourceId(I)I
    .locals 0

    const p1, 0x7f0d0020

    return p1
.end method
