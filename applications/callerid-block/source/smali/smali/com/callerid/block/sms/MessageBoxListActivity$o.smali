.class Lcom/callerid/block/sms/MessageBoxListActivity$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$o;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8868\u60c5\u663e\u793a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \u952e\u76d8\u663e\u793a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " \u9ad8\u5ea6:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_0

    const-string p3, "wbb"

    invoke-static {p3, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$o;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->R(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f0800e8

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$o;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->R(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f08019a

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
