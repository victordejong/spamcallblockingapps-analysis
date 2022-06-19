.class Lcom/callerid/block/start/SettingActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$d;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$d;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p1}, Lcom/callerid/block/start/SettingActivity;->h0()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "defaults_cc_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    return-void
.end method
