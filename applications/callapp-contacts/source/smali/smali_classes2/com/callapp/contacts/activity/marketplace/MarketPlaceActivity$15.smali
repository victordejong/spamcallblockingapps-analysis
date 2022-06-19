.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 827
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->q(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 828
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->q(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->e()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final s_()V
    .locals 0

    return-void
.end method
