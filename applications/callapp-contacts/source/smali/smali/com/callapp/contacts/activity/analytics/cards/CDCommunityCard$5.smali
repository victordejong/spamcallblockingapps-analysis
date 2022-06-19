.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$5;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$5;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$3200(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V

    return-void
.end method
