.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$c;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$c;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$c;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$c;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->Z(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$c$a;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$c;)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/g/i;->c(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/g/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
