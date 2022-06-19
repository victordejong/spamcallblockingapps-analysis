.class public final synthetic Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/model/call/CallData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q;->f$0:Lcom/callapp/contacts/model/call/CallData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q;->f$0:Lcom/callapp/contacts/model/call/CallData;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->lambda$updateCardData$1(Lcom/callapp/contacts/model/call/CallData;Landroid/view/View;)V

    return-void
.end method
