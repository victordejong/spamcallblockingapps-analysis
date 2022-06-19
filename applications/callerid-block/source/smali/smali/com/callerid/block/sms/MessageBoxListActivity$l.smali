.class Lcom/callerid/block/sms/MessageBoxListActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/util/x0/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$l;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5f00\u542f\u4e86\u6743\u9650"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/sms/MessageBoxListActivity;->O0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$l;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->y0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->x0(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$l;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->y0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/io/File;

    move-result-object v1

    const-string v2, "com.callerid.block.sms.MessageBoxListActivity.provider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->x0(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$l;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->w0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v0, v1, v2}, Lcom/callerid/block/sms/a;->h(Landroid/app/Activity;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$l;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v1, 0x0

    const-string v2, "\u8bbe\u5907\u6ca1\u6709SD\u5361\uff01"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
