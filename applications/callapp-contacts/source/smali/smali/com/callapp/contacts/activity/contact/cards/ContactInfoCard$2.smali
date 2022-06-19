.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->hideWhenExceedMaxCards()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)V

    return-void
.end method
