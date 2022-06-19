.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onCardBounded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V

    return-void
.end method
