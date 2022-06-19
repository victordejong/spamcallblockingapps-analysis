.class Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/servermessage/ValidateClientTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/json/JSONClientValidationResponse;

.field final synthetic b:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;->b:Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    iput-object p2, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;->a:Lcom/callapp/common/model/json/JSONClientValidationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 191
    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;->a:Lcom/callapp/common/model/json/JSONClientValidationResponse;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getRejectedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
