.class Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->A0()V

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->o0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->u0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;->b:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->S(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
