.class Lcom/allinone/callerid/h/c$b;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v3}, Lcom/allinone/callerid/h/c;->g0(Lcom/allinone/callerid/h/c;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->h0(Lcom/allinone/callerid/h/c;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->g0(Lcom/allinone/callerid/h/c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x424ecccd    # 51.7f

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->h0(Lcom/allinone/callerid/h/c;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/h/c$b;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->h0(Lcom/allinone/callerid/h/c;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
