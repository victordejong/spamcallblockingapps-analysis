.class Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$5;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$5;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    return-void
.end method
