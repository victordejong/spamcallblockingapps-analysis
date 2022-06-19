.class final Landroidx/appcompat/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1007
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1018
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1019
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 1020
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    .line 2048
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_6

    .line 2051
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    if-eqz v0, :cond_6

    .line 2054
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eq p2, v2, :cond_5

    const/16 p3, 0x54

    if-eq p2, p3, :cond_5

    const/16 p3, 0x3d

    if-ne p2, p3, :cond_1

    goto :goto_2

    :cond_1
    const/16 p3, 0x15

    if-eq p2, p3, :cond_3

    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x13

    if-ne p2, p3, :cond_6

    .line 2081
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    goto :goto_3

    :cond_3
    :goto_0
    if-ne p2, p3, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    .line 2071
    :cond_4
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result p2

    .line 2072
    :goto_1
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 2073
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 2074
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 2075
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    return v3

    .line 2059
    :cond_5
    :goto_2
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p2

    .line 2060
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->b(I)Z

    move-result p1

    return p1

    :cond_6
    :goto_3
    return v1

    .line 1025
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 2881
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    .line 1025
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1026
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v3, :cond_9

    if-ne p2, v2, :cond_9

    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1031
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$7;->a:Landroidx/appcompat/widget/SearchView;

    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 1032
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1031
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;)V

    return v3

    :cond_9
    return v1
.end method
