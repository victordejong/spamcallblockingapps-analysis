.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b()V
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

    .line 1267
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$25;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$25;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    sget-object v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_SERVER_CODE:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V

    return-void
.end method
