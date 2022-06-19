.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->pausePlayerCardIdNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onPausePlayerCard()V

    return-void
.end method
