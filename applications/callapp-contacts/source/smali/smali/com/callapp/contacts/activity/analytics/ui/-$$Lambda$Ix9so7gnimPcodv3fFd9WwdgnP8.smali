.class public final synthetic Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8;->f$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    return-void
.end method


# virtual methods
.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8;->f$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method
