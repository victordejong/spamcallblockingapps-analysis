.class Lcom/callerid/block/start/BlockSettingActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/BlockSettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$a;->b:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$a;->b:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$a;->b:Lcom/callerid/block/start/BlockSettingActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
