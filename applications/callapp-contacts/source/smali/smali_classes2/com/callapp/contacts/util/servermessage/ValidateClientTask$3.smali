.class Lcom/callapp/contacts/util/servermessage/ValidateClientTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


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

    .line 208
    iput-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$3;->a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 2

    .line 211
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Update CallApp"

    const-string v1, "\'Cancel\' was clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
