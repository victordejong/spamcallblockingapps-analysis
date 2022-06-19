.class Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;->c:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    iput-object p2, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Update CallApp"

    const-string v1, "\'Approve\' was clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
