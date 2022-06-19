.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->b()V

    :cond_0
    return-void
.end method
