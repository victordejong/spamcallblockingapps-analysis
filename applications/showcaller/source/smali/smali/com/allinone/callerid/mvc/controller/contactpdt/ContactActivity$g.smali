.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result p2

    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/q/a;->d(Landroid/content/Context;ILcom/allinone/callerid/i/a/q/d;)V

    return-void
.end method
