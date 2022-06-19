.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    return-void
.end method
