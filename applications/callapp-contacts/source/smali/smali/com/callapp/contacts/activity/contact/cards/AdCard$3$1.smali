.class Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AdCard$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard$3;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard$3;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->tryLoadingAd()V

    return-void
.end method
