.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->setFooterData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->setFooterData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V

    return-void
.end method
