.class public final Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoRingtoneViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0019\u0010\u000c\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;",
        "",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Landroid/view/View;)V",
        "cardText",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "getCardText",
        "()Landroid/widget/TextView;",
        "tryItButton",
        "getTryItButton",
        "tryItButtonContainer",
        "getTryItButtonContainer",
        "()Landroid/view/View;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a01d2

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a097f

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f0a0980

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->d:Landroid/view/View;

    const-string v1, "cardText"

    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120811

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "tryItButton"

    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120730

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 37
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060244

    .line 38
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    check-cast v0, Landroid/view/View;

    const p1, 0x7f060088

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v1, 0x7f08058d

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 40
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
