.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/customview/EZKeyboardView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    const-string p1, ""

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ \\(\\)-]+"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const v2, 0x7f08027f

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;

    move-result-object p2

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->r0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->t0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->r0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->u0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f08015b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f08015a

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->v0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
