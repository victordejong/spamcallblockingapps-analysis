.class Lcom/callapp/contacts/util/servermessage/ValidateClientTask$6;
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
.field final synthetic a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$6;->a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 248
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Update CallApp"

    const-string v1, "\'Cancel\' was clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
