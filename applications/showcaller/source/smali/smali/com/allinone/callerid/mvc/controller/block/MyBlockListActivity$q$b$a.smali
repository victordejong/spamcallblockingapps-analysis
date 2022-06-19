.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget v2, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->f:I

    iget v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->d:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e(Landroid/view/View;II)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
