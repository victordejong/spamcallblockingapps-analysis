.class final Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 141
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->access$getCardPriority$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReferAndEarn"

    const-string v2, "ClickInviteContactCard"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object p1, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->access$getPresentersContainer$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    const-string v0, "presentersContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "cc"

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;I)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object p1

    .line 144
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->access$getPresentersContainer$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
