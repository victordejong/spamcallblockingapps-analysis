.class public final synthetic Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;

.field public final synthetic f$1:Lcom/callapp/contacts/model/call/CallData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;->f$0:Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;->f$1:Lcom/callapp/contacts/model/call/CallData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;->f$0:Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;->f$1:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->lambda$updateCardData$0$ConferenceCard(Lcom/callapp/contacts/model/call/CallData;Landroid/view/View;)V

    return-void
.end method
