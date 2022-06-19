.class Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
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

    .line 211
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$902(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Z)Z

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Z)V

    return-void
.end method
