.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->a(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->a(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->a(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->a0(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Lcom/allinone/callerid/b/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->b0(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->c0(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->c0(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
