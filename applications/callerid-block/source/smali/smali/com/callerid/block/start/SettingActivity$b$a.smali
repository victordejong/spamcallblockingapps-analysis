.class Lcom/callerid/block/start/SettingActivity$b$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity$b;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$b$a;->b:Lcom/callerid/block/start/SettingActivity$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity$b$a;->b:Lcom/callerid/block/start/SettingActivity$b;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {v0}, Lcom/callerid/block/start/SettingActivity;->U(Lcom/callerid/block/start/SettingActivity;)V

    return-void
.end method
