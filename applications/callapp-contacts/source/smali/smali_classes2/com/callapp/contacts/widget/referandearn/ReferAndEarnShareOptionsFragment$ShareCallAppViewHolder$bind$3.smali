.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

.field final synthetic b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 207
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getSenderHelper()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "ReferAndEarn"

    const-string v3, "InviteClick"

    invoke-virtual {p1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getItemType()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;->SENDER_HELPER:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;

    const-string v2, "requireContext()"

    if-ne p1, v0, :cond_9

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getSenderHelper()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$WhenMappings;->a:[I

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons$SenderType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 216
    :goto_1
    new-instance p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    check-cast p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;

    iput-object v0, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->b:Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2028
    check-cast p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;

    iput-object v0, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->d:Landroidx/fragment/app/Fragment;

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    check-cast v0, Lcom/callapp/contacts/manager/popup/ActivityResult;

    const-string v1, "activityResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3026
    check-cast p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;

    iput-object v0, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->c:Lcom/callapp/contacts/manager/popup/ActivityResult;

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.phone.asGlobalNumber()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->PENDING:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updateReferStatus(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getFutureTarget()Lcom/bumptech/glide/e/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->setImageUri(Landroid/net/Uri;)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getSenderHelper()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4030
    new-instance v8, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;

    .line 4031
    iget-object v2, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->a:Landroid/net/Uri;

    .line 4032
    iget-object v3, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->b:Landroid/content/Context;

    .line 4033
    iget-object v4, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->c:Lcom/callapp/contacts/manager/popup/ActivityResult;

    .line 4034
    iget-object v5, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->d:Landroidx/fragment/app/Fragment;

    .line 4035
    iget-object v6, p1, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;->e:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v7, 0x0

    move-object v1, v8

    .line 4030
    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    invoke-virtual {v0, v8}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;->c()V

    :cond_6
    return-void

    .line 213
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;->t_()V

    :cond_8
    return-void

    .line 238
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    const-string v0, "copy"

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v1, v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_a
    return-void
.end method
