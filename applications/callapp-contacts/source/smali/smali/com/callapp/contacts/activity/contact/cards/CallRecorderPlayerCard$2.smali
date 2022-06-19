.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setInitialCardDetails(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Landroid/view/View;)Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup;->b()V

    return-void
.end method
