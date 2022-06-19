.class Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->container:Landroid/view/ViewGroup;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;Landroid/view/ViewGroup;I)V

    return-void
.end method
