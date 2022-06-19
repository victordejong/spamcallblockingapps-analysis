.class Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/PostCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    if-eqz p1, :cond_11

    .line 85
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->hj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WHATSAPP:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_0

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SIGNAL:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_1

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->SIGNAL:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->VIBER:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_2

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->TELEGRAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_3

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->TELEGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->DUO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_4

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->DUO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ALLO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_5

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->ALLO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 98
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->HANGOUTS:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_6

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->GOOGLE_PLUS_HANGOUT:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 100
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WECHAT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_7

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->WE_CHAT:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 102
    :cond_7
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SKYPE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_8

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->SKYPE:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 104
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_9

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    sget-object p2, Lcom/callapp/contacts/manager/Singletons$SenderType;->SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void

    .line 106
    :cond_9
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->PVR:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_a

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 108
    :cond_a
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->NOTE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_b

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 110
    :cond_b
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_c

    .line 111
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 112
    :cond_c
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_d

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 114
    :cond_d
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ADD_CONTACT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_e

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 116
    :cond_e
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_f

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 118
    :cond_f
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p2, p3, :cond_10

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    return-void

    .line 120
    :cond_10
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->REFER_AND_EARN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne p1, p2, :cond_11

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    :cond_11
    return-void
.end method
