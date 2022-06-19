.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)V
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

    .line 212
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 215
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$2200(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    return-void
.end method
