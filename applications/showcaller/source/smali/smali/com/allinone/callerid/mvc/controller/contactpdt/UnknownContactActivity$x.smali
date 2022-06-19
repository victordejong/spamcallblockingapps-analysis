.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
