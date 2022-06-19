.class Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;
.super Ljava/lang/Object;
.source "ContactRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/a$c;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->e2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/b/z/c;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->d:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->e2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/b/z/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->f2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->g2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->h2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->f2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->g2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->h2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->f2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->g2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->h2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
