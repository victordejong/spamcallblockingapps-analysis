.class public Lcarbon/widget/DropDown$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcarbon/widget/RecyclerView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcarbon/widget/RecyclerView$d<",
        "TType;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/DropDown;


# direct methods
.method public constructor <init>(Lcarbon/widget/DropDown;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2, p3}, Lcarbon/widget/DropDown$b;->b(Landroid/view/View;Ljava/io/Serializable;I)V

    return-void
.end method

.method public b(Landroid/view/View;Ljava/io/Serializable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TType;I)V"
        }
    .end annotation

    iget-object p1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object p1, p1, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {p1}, Lsc0;->j()Lcarbon/widget/DropDown$j;

    move-result-object p1

    sget-object v0, Lcarbon/widget/DropDown$j;->b:Lcarbon/widget/DropDown$j;

    iget-object v1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    if-ne p1, v0, :cond_1

    iget-object v1, v1, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v1, p3}, Lsc0;->z(I)V

    iget-object v1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object v1, v1, Lcarbon/widget/DropDown;->C0:Lcarbon/widget/DropDown$h;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p3}, Lcarbon/widget/DropDown$h;->a(Ljava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object v1, v1, Lcarbon/widget/DropDown;->D0:Lcarbon/widget/DropDown$i;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2, p3}, Lcarbon/widget/DropDown$i;->a(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcarbon/widget/DropDown;->getSelectedIndex()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    invoke-virtual {v2, p3}, Lcarbon/widget/DropDown;->setSelectedIndex(I)V

    iget-object v2, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object v2, v2, Lcarbon/widget/DropDown;->C0:Lcarbon/widget/DropDown$h;

    if-eqz v2, :cond_2

    invoke-interface {v2, p2, p3}, Lcarbon/widget/DropDown$h;->a(Ljava/lang/Object;I)V

    :cond_2
    iget-object v2, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object v2, v2, Lcarbon/widget/DropDown;->D0:Lcarbon/widget/DropDown$i;

    if-eqz v2, :cond_3

    if-eq v1, p3, :cond_3

    invoke-interface {v2, p2, p3}, Lcarbon/widget/DropDown$i;->a(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object p3, p2, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {p3}, Lsc0;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcarbon/widget/DropDown$b;->a:Lcarbon/widget/DropDown;

    iget-object p1, p1, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {p1}, Lsc0;->dismiss()V

    :cond_4
    return-void
.end method
