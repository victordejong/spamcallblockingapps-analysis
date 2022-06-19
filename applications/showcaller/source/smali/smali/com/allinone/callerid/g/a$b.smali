.class Lcom/allinone/callerid/g/a$b;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a;->C2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p1

    const/high16 p5, 0x41100000    # 9.0f

    invoke-static {p1, p5}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p4, p1

    if-ne p3, p4, :cond_1

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pageCount:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p3}, Lcom/allinone/callerid/g/a;->t2(Lcom/allinone/callerid/g/a;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "comment"

    invoke-static {p3, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p3}, Lcom/allinone/callerid/g/a;->t2(Lcom/allinone/callerid/g/a;)I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->v2(Lcom/allinone/callerid/g/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p4}, Lcom/allinone/callerid/g/a;->y2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p5}, Lcom/allinone/callerid/g/a;->c2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->d2(Lcom/allinone/callerid/g/a;)I

    move-result v0

    invoke-static {p1, p3, p4, p5, v0}, Lcom/allinone/callerid/g/a;->f2(Lcom/allinone/callerid/g/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/a$b;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1, p2}, Lcom/allinone/callerid/g/a;->w2(Lcom/allinone/callerid/g/a;Z)Z

    :cond_1
    return-void
.end method
