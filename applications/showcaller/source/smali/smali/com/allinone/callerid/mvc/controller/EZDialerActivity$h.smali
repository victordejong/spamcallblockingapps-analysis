.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e5

    if-eq p1, v0, :cond_4

    const v0, 0x7f0901dd

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "createshortcut_dialog_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u624b\u673a\u7cfb\u7edf\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tony"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    const-string v0, "shortcut"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const-class v3, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    const-string v4, "only id"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    const/high16 v4, 0x7f0d0000

    .line 11
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    .line 12
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->d:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/receiver/MyReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0xc000000

    invoke-static {v2, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 17
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->o1(Z)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/c;->dismiss()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->K()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/d;->d(Landroid/content/Context;)V

    .line 21
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->o1(Z)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/c;->dismiss()V

    goto :goto_0

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;->e:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/c;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
