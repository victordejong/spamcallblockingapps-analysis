.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$5;
.super Landroidx/recyclerview/widget/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$5;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0}, Landroidx/recyclerview/widget/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 3

    .line 238
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$5;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 242
    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v0

    .line 244
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gez p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 252
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    if-gez p3, :cond_3

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 261
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    .line 262
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
