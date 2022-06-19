.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/BaseEditText;

.field final synthetic e:Lcom/allinone/callerid/customview/BaseEditText;

.field final synthetic f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;Lcom/allinone/callerid/customview/BaseEditText;Lcom/allinone/callerid/customview/BaseEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->d:Lcom/allinone/callerid/customview/BaseEditText;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->e:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
