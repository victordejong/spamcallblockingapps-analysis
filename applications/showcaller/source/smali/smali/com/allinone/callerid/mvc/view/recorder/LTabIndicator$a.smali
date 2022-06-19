.class Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;
.super Ljava/lang/Object;
.source "LTabIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->b(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 2
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->d:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->c(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->c(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;

    move-result-object p1

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->d:I

    invoke-interface {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;->a(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->b(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->d:I

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->d(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
