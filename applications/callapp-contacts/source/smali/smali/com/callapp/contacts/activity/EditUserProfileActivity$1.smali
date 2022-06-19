.class Lcom/callapp/contacts/activity/EditUserProfileActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$1;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Login successful Phone Number"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$1;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->reloadContact()V

    .line 114
    invoke-static {p2, p3}, Lcom/callapp/contacts/util/servermessage/RegisterClientUtils;->a(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    return-void
.end method
