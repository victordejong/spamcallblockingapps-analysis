.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewHolder:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View$OnTouchListener;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewHolder;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Ljava/lang/Integer;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->e:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TViewHolder;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewHolder;TData;)V"
        }
    .end annotation
.end method

.method protected abstract getLayoutResId()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->getLayoutResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->d:Landroid/view/View;

    .line 33
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->e:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->setBackgroundColor(I)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->b:Ljava/lang/Object;

    .line 44
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->d:Landroid/view/View;

    return-object p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->e:Ljava/lang/Integer;

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->f:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->c:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method
