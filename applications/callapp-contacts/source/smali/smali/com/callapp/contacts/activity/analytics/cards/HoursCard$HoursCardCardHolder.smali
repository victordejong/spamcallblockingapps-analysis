.class Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/HoursCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoursCardCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Landroid/view/View;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0386

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a02d9

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->c:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->c:Landroid/widget/FrameLayout;

    return-object p0
.end method
