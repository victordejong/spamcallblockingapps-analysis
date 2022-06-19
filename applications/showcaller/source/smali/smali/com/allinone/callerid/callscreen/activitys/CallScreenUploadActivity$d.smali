.class Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;
.super Ljava/lang/Object;
.source "CallScreenUploadActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->l0(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {p1, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "callscreen_upload_success"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
