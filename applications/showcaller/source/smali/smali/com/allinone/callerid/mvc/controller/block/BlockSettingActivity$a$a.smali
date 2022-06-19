.class Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;
.super Ljava/lang/Object;
.source "BlockSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
