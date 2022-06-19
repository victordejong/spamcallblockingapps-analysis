.class Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostCallFirstTimeHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;Landroid/view/View;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0922

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a08ab

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->c:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method
