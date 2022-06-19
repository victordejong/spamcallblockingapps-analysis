.class public final synthetic Lo8/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/rengwuxian/materialedittext/MaterialEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;Landroid/widget/ImageView;Lcom/rengwuxian/materialedittext/MaterialEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/z;->a:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lo8/z;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lo8/z;->c:Lcom/rengwuxian/materialedittext/MaterialEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lo8/z;->a:Lcom/mglab/scm/visual/c;

    iget-object v0, p0, Lo8/z;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lo8/z;->c:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, p1, Lcom/mglab/scm/visual/c;->e:Z

    .line 2
    iget-object v2, p1, Lcom/mglab/scm/visual/c;->c:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v2, 0x7f11009a

    invoke-virtual {v0, v2}, Le2/g;->setTitle(I)V

    .line 5
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-le p1, v3, :cond_0

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
