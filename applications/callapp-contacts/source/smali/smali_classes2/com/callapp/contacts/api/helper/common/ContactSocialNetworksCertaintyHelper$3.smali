.class Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;->a()V

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
