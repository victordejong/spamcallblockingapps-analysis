.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    return-void
.end method
