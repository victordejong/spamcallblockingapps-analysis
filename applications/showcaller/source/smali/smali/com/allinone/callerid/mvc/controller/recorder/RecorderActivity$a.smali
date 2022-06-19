.class Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Dialog;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
