.class public Lcom/cocosw/bottomsheet/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/h;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->u:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    .line 5
    iget-object v0, p1, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 6
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object p1, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    .line 9
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/GridView;->startLayoutAnimation()V

    .line 11
    iget-object p1, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    .line 12
    iget-object v0, p1, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 13
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 14
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/cocosw/bottomsheet/d;->a:Lcom/cocosw/bottomsheet/h;

    .line 19
    iget-object v0, p1, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    .line 20
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 21
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
