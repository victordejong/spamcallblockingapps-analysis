.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sinch/verification/core/internal/Verification;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;Lcom/sinch/verification/core/internal/Verification;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->a:Lcom/sinch/verification/core/internal/Verification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->I(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->a:Lcom/sinch/verification/core/internal/Verification;

    if-eqz v0, :cond_0

    .line 1250
    invoke-interface {v0}, Lcom/sinch/verification/core/internal/Verification;->stop()V

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    .line 1253
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->K(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->K(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24$1;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    sget-object v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_VERIFICATION:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V

    :cond_2
    return-void
.end method
