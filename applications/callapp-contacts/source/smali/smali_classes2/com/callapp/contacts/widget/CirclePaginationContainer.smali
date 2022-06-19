.class public Lcom/callapp/contacts/widget/CirclePaginationContainer;
.super Lcom/callapp/contacts/widget/BasePaginationContainer;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/PaginationContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/BasePaginationContainer<",
        "Lcom/callapp/contacts/widget/DualCirclesCheckBox;",
        ">;",
        "Lcom/callapp/contacts/widget/PaginationContainer;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CirclePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/CirclePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/BasePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d023b

    const/4 v1, 0x0

    .line 1030
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p1
.end method

.method protected final synthetic a([Landroid/view/View;III)V
    .locals 3

    .line 10
    check-cast p1, [Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    const/4 v0, 0x0

    .line 1035
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1036
    aget-object v1, p1, v0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_0

    .line 1038
    invoke-virtual {v1, p3, v2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setIconColorFilter(IZ)V

    goto :goto_1

    .line 1040
    :cond_0
    invoke-virtual {v1, p4, v2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setIconColorFilter(IZ)V

    .line 1042
    :goto_1
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic getNewBtnsArray(I)[Landroid/view/View;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->getNewBtnsArray(I)[Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object p1

    return-object p1
.end method

.method protected getNewBtnsArray(I)[Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 0

    .line 25
    new-array p1, p1, [Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p1
.end method
