.class Landroidx/appcompat/widget/ai$a;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 527
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ai$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ai$c;->b()Landroidx/appcompat/app/a$c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 541
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 546
    if-nez p2, :cond_0

    .line 547
    iget-object v1, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ai$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a$c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/ai;->a(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/ai$c;

    move-result-object p2

    .line 551
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 549
    check-cast v0, Landroidx/appcompat/widget/ai$c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ai$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ai$c;->a(Landroidx/appcompat/app/a$c;)V

    goto :goto_0
.end method
