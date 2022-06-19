.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->onMultiCardExpended(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->a:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldStartHidden:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$102(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)Z

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Z)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->setOnExpandAnimatorEndListener(Lit/gmariotti/cardslib/library/a/b$d;)V

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->doExpand()V

    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->setOnCollapseAnimatorEndListener(Lit/gmariotti/cardslib/library/a/b$b;)V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->doCollapse()V

    return-void
.end method
