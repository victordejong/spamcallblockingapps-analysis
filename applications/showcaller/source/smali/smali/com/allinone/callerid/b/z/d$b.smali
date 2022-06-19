.class Lcom/allinone/callerid/b/z/d$b;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/d;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

.field final synthetic e:Lcom/allinone/callerid/b/z/d$c;

.field final synthetic f:Lcom/allinone/callerid/b/z/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/d;Lcom/allinone/callerid/bean/recorder/CustomRecord;Lcom/allinone/callerid/b/z/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/d$b;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    iput-object p3, p0, Lcom/allinone/callerid/b/z/d$b;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->O(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f0802bf

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->Q(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    const v1, 0x7f060060

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    iput-boolean v0, p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->E(Lcom/allinone/callerid/b/z/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/b/z/d$b;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->h0()V

    .line 8
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v1, "\u6539\u4e3a\u9009\u4e2d\u72b6\u6001"

    .line 9
    invoke-static {p1, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$b;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->k0()V

    :cond_1
    return v0
.end method
