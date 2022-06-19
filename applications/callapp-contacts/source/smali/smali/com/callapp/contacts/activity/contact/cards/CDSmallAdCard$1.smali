.class Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->container:Landroid/view/ViewGroup;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
