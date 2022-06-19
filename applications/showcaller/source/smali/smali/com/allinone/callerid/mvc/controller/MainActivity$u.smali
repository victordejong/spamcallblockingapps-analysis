.class Lcom/allinone/callerid/mvc/controller/MainActivity$u;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/p/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$u;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "0"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$u;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$u;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->R0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$u;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->S0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
