.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/customview/EZKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->e()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->t0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->r0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->u0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08015b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08015a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V0()V

    :goto_0
    return-void
.end method
