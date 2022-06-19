.class Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/customview/EZKeyboardView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1, p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p2, p2, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1840b

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x5c672f6d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "del_all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "del"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1, v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->p0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->q0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/callerid/block/mvc/controller/EZDialActivity;->s0(Z)Z

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->t0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1, v4}, Lcom/callerid/block/mvc/controller/EZDialActivity;->p0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p2, p2, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->u0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;->a:Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    iget-object p2, p2, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->S(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
