.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Login successful Phone Number"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p2, p3}, Lcom/callapp/contacts/util/servermessage/RegisterClientUtils;->a(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V

    return-void
.end method
