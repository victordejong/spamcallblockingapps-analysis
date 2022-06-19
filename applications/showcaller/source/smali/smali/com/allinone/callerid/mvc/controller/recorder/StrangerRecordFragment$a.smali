.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "StrangerRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x8

    const-string v0, "tony"

    if-nez p2, :cond_1

    .line 3
    :try_start_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u9876\u90e8"

    .line 4
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->a2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_2

    const-string p2, "\u4e0d\u662f\u9876\u90e8"

    .line 7
    invoke-static {v0, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->a2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const v0, 0x7f100339

    if-ne p2, p3, :cond_4

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->a2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    .line 11
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result p2

    .line 13
    iput p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->a:I

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object p3

    .line 15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_4

    if-ltz p2, :cond_4

    .line 16
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/recorder/e;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->d2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->d2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result p1

    .line 22
    iget p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->a:I

    if-eq p2, p1, :cond_6

    .line 23
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->a:I

    .line 24
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    if-ltz p1, :cond_6

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {p3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/recorder/e;->a(J)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->d2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_5
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;->b:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->d2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method
