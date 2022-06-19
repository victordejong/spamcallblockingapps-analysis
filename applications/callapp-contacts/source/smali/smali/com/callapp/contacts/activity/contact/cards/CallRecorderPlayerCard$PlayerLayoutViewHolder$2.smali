.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;Landroid/widget/ImageView;ILjava/lang/Integer;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->b:I

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->b:I

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->b:I

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method
