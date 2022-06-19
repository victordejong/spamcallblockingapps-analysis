.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->b:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->L(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    .line 1288
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->b:Lcom/callapp/framework/phone/Phone;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/SinchCodeUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V

    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;->c:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b()V

    return-void
.end method
