.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;
.super Landroid/os/Handler;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    if-eqz v0, :cond_b

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29a

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p1, v1, :cond_a

    const/16 v1, 0x309

    if-eq p1, v1, :cond_8

    const/16 v1, 0x3e7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8ae

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd05

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 7
    :cond_1
    :try_start_1
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 8
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/search/CallLogBean;->q0(I)V

    .line 9
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object p1

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/b/m;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/allinone/callerid/b/m;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/allinone/callerid/b/m;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/b/m;)Lcom/allinone/callerid/b/m;

    .line 14
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    :goto_0
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 19
    :cond_3
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 21
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 23
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 25
    :cond_5
    :try_start_2
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 26
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 31
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object p1

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/b/m;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 32
    :cond_6
    new-instance p1, Lcom/allinone/callerid/b/m;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/allinone/callerid/b/m;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/b/m;)Lcom/allinone/callerid/b/m;

    .line 33
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;

    move-result-object p1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 34
    :cond_7
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->a0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 36
    :cond_8
    :try_start_3
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->m0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->m0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 37
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->X(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 38
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Y(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 41
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->m0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_9
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->z0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/i;

    move-result-object p1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/b/i;->b(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 44
    :cond_a
    :try_start_4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->X(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Y(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    return-void
.end method
