.class Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;
.super Ljava/lang/Object;
.source "ExpandLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;->d:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;->d:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->a(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;->d:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->c(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->k(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->b(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;I)I

    :cond_0
    return-void
.end method
