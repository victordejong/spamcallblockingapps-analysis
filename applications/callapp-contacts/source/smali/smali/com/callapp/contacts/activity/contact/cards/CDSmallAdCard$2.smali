.class Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->blinkAnimation(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->a:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const v1, 0x7f060026

    goto :goto_0

    :cond_0
    const v1, 0x7f060193

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->a:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;Landroid/view/ViewGroup;I)V

    return-void
.end method
