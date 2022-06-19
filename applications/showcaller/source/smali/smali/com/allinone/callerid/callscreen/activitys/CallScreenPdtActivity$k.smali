.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 1

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u9ed8\u8ba4\u6765\u7535\u79c0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callscreen"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1002db

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
