.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->shouldStartHidden:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->onAnimatorEndListener()V

    return-void
.end method
