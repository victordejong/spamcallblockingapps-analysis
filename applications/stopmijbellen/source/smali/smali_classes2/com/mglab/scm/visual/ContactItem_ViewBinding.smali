.class public Lcom/mglab/scm/visual/ContactItem_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/ContactItem;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/ContactItem;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/ContactItem_ViewBinding;->b:Lcom/mglab/scm/visual/ContactItem;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090398

    const-string v2, "field \'nameTextView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/ContactItem;->nameTextView:Landroid/widget/TextView;

    const v0, 0x7f090399

    const-string v1, "field \'numberTextView\'"

    .line 7
    const-class v2, Landroid/widget/TextView;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/ContactItem;->numberTextView:Landroid/widget/TextView;

    const v0, 0x7f09019e

    const-string v1, "field \'contactImageView\'"

    .line 11
    const-class v2, Landroid/widget/ImageView;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/ContactItem;->contactImageView:Landroid/widget/ImageView;

    const v0, 0x7f0900cf

    const-string v1, "field \'checkBox\'"

    .line 15
    const-class v2, Landroid/widget/CheckBox;

    .line 16
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    invoke-static {p2, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/mglab/scm/visual/ContactItem;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/ContactItem_ViewBinding;->b:Lcom/mglab/scm/visual/ContactItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/ContactItem_ViewBinding;->b:Lcom/mglab/scm/visual/ContactItem;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/ContactItem;->nameTextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/ContactItem;->numberTextView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/ContactItem;->contactImageView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/ContactItem;->checkBox:Landroid/widget/CheckBox;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
