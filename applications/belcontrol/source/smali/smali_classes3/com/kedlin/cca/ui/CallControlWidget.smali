.class public Lcom/kedlin/cca/ui/CallControlWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5

    invoke-static {}, Lu71;->r()Z

    move-result v0

    const-string v1, ", "

    const-string v2, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110324

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {}, Lu71;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110325

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lu71;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11021e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const v0, 0x7f110326

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lu71;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f1103c9

    goto :goto_1

    :cond_4
    const v2, 0x7f1103c8

    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0666

    const v4, 0x7f11049a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p0, 0x7f0a0668

    invoke-virtual {p1, p0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lu71;->n()Z

    move-result p0

    const v2, 0x7f0a0667

    if-eqz p0, :cond_5

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_5
    const/16 p0, 0x8

    invoke-virtual {p1, v2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/kedlin/cca/ui/CallControlWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0197

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/kedlin/cca/ui/CallControlWidget;->b(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const/high16 v1, 0x8000000

    invoke-static {p1, p3, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a06c7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0197

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0a06cc

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0a06cd

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/CallControlWidget;->b(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const v1, 0x7f0a06c7

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0a06ce

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0a06c8

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0a06c9

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0a06ca

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CallControlWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method
