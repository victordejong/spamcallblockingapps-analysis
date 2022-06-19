.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final shouldLoadIntervalPredicate(Lcom/callapp/contacts/util/ads/JSONAdPreferences;)Z
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->lambda$gubne3NVVqcfoE4E8QXJC2L2SgU(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;ZLcom/callapp/contacts/util/ads/JSONAdPreferences;)Z

    move-result p1

    return p1
.end method
