.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$1200(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    return-void
.end method
