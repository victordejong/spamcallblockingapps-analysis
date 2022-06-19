.class public Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;)V
    .locals 6

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    const v1, 0x7f120386

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;-><init>(IZ)V

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 35
    iget-object v4, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    new-instance v5, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    iget v3, v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->imNameStringResId:I

    invoke-direct {v5, v3, v2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;-><init>(IZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getActiveFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    .line 93
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->getTextResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAllSelected()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 3

    .line 15
    check-cast p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    .line 1049
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    .line 2026
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->getTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 2027
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextColor(I)V

    .line 2028
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2030
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08028f

    .line 2031
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f060088

    .line 2032
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0805c9

    .line 2034
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2037
    :goto_0
    iget-object v1, p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->getCheckBox()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2042
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d02f1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2043
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
