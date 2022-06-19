.class public Lcom/callapp/contacts/widget/RectPaginationContainer;
.super Lcom/callapp/contacts/widget/BasePaginationContainer;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/PaginationContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/BasePaginationContainer<",
        "Landroid/view/View;",
        ">;",
        "Lcom/callapp/contacts/widget/PaginationContainer;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/RectPaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/RectPaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/BasePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d023c

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final a([Landroid/view/View;III)V
    .locals 2

    const/4 v0, 0x0

    .line 36
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 37
    aget-object v1, p1, v0

    if-ne v0, p2, :cond_0

    .line 39
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getNewBtnsArray(I)[Landroid/view/View;
    .locals 0

    .line 26
    new-array p1, p1, [Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p1
.end method
