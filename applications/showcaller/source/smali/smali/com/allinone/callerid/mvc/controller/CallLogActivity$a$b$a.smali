.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->C()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allinone.callerid.RELOAD_DATA"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
