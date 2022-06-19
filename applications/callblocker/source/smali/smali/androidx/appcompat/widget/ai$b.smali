.class Landroidx/appcompat/widget/ai$b;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 561
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ai$c;

    .line 562
    invoke-virtual {v0}, Landroidx/appcompat/widget/ai$c;->b()Landroidx/appcompat/app/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->d()V

    .line 563
    iget-object v0, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 564
    :goto_0
    if-ge v2, v3, :cond_1

    .line 565
    iget-object v0, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 566
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 564
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 566
    goto :goto_1

    .line 568
    :cond_1
    return-void
.end method
