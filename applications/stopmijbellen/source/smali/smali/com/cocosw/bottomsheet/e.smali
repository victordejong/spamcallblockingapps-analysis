.class public Lcom/cocosw/bottomsheet/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/e$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/h;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 3
    iget-object v0, v0, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 3
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 4
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h;->a:Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 3
    iget-object v0, v0, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 3
    iget-object v1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 4
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 7
    iget v1, v1, Lcom/cocosw/bottomsheet/h;->g:I

    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 9
    new-instance p3, Lcom/cocosw/bottomsheet/e$a;

    invoke-direct {p3, p0}, Lcom/cocosw/bottomsheet/e$a;-><init>(Lcom/cocosw/bottomsheet/e;)V

    const v1, 0x7f090086

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11
    iput-object v1, p3, Lcom/cocosw/bottomsheet/e$a;->a:Landroid/widget/TextView;

    const v1, 0x7f090085

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 13
    iput-object v1, p3, Lcom/cocosw/bottomsheet/e$a;->b:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/e$a;

    :goto_0
    const/4 v1, 0x0

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 17
    iget-object v2, v2, Lcom/cocosw/bottomsheet/h;->a:Landroid/util/SparseIntArray;

    .line 18
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 20
    iget-object v2, v2, Lcom/cocosw/bottomsheet/h;->a:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/e;->a(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 23
    iget-object v1, p3, Lcom/cocosw/bottomsheet/e$a;->a:Landroid/widget/TextView;

    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 26
    iget-object v0, p3, Lcom/cocosw/bottomsheet/e$a;->b:Landroid/widget/ImageView;

    .line 27
    iget-object v1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 28
    iget-boolean v1, v1, Lcom/cocosw/bottomsheet/h;->i:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    .line 29
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 30
    :cond_4
    iget-object v1, p3, Lcom/cocosw/bottomsheet/e$a;->b:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v0, p3, Lcom/cocosw/bottomsheet/e$a;->b:Landroid/widget/ImageView;

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_3
    iget-object v0, p3, Lcom/cocosw/bottomsheet/e$a;->b:Landroid/widget/ImageView;

    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 36
    iget-object p3, p3, Lcom/cocosw/bottomsheet/e$a;->a:Landroid/widget/TextView;

    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 3
    iget-object v0, v0, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    return p1
.end method
