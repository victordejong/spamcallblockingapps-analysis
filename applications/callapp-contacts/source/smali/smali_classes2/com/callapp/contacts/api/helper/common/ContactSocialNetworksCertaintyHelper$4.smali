.class Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    .line 184
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
