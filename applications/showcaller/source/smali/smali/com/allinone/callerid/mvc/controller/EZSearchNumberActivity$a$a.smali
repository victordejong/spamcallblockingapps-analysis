.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/b/b0/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
