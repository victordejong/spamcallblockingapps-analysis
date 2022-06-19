.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/q/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, -0x3e7

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    :cond_0
    const-string p1, "0"

    const v0, 0x7f080185

    if-eqz p2, :cond_2

    const-string v1, ""

    .line 2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080184

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->o0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->o0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->o0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
