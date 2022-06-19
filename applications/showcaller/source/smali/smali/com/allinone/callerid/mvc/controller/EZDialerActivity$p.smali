.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c1()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/customview/EZKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-nez p1, :cond_4

    .line 2
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->i0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Y(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->v0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
