.class Lcom/callapp/contacts/activity/contact/cards/PhonesCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->setCardClickable(Z)V

    return-void
.end method
