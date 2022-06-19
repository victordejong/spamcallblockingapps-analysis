.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1224
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 1225
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "sinchAppKey"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->getInstance()Lcom/sinch/verification/core/config/general/ApplicationContextSetter;

    move-result-object v1

    .line 1228
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sinch/verification/core/config/general/ApplicationContextSetter;->applicationContext(Landroid/content/Context;)Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;

    move-result-object v1

    new-instance v2, Lcom/sinch/verification/core/auth/AppKeyAuthorizationMethod;

    invoke-direct {v2, v0}, Lcom/sinch/verification/core/auth/AppKeyAuthorizationMethod;-><init>(Ljava/lang/String;)V

    .line 1229
    invoke-interface {v1, v2}, Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;->authorizationMethod(Lcom/sinch/verification/core/auth/AuthorizationMethod;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfigCreator;->build()Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object v0

    .line 1232
    invoke-static {}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getInstance()Lcom/sinch/verification/core/config/GlobalConfigSetter;

    move-result-object v1

    .line 1233
    invoke-interface {v1, v0}, Lcom/sinch/verification/core/config/GlobalConfigSetter;->globalConfig(Lcom/sinch/verification/core/config/general/GlobalConfig;)Lcom/sinch/verification/core/config/InitialSetter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->a:Lcom/callapp/framework/phone/Phone;

    .line 1234
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/config/InitialSetter;->number(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->b:Ljava/lang/String;

    .line 1235
    invoke-interface {v0, v1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;->custom(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;

    .line 1236
    invoke-interface {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    .line 1238
    invoke-static {}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->getInstance()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;

    move-result-object v1

    .line 1239
    invoke-interface {v1, v0}, Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;->config(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    .line 1240
    invoke-interface {v0, v1}, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;->initializationListener(Ljava/lang/Object;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    .line 1241
    invoke-interface {v0, v1}, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;->verificationListener(Lcom/sinch/verification/core/verification/response/VerificationListener;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    move-result-object v0

    .line 1242
    invoke-interface {v0}, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;->build()Lcom/sinch/verification/core/internal/Verification;

    move-result-object v0

    .line 1244
    invoke-interface {v0}, Lcom/sinch/verification/core/internal/Verification;->initiate()V

    .line 1245
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;Lcom/sinch/verification/core/internal/Verification;)V

    const-wide/32 v3, 0xc350

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
