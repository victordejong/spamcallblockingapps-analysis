.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/a/b$d;


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

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->onAnimatorEndListener()V

    return-void
.end method
