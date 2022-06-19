.class Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V

    return-void
.end method
