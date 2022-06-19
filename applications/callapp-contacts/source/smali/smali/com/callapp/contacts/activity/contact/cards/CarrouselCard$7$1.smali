.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->a(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;I)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;->a:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;I)V

    return-void
.end method
