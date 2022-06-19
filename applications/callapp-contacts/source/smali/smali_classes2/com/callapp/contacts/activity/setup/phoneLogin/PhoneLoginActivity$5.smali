.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hbb20/CountryCodePicker$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V

    return-void
.end method
