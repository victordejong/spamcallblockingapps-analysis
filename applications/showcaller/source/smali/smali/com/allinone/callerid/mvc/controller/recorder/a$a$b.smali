.class Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;
.super Ljava/lang/Object;
.source "ContactRecordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/a$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->c0()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    return-void
.end method
