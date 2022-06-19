.class public final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UnansweredCallsCardCardHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007R\u0011\u0010\u001a\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000bR\u0011\u0010\u001c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;",
        "",
        "root",
        "Landroid/view/View;",
        "(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Landroid/view/View;)V",
        "avoidYouDivider",
        "getAvoidYouDivider",
        "()Landroid/view/View;",
        "avoidYouSubTitle",
        "Landroid/widget/TextView;",
        "getAvoidYouSubTitle",
        "()Landroid/widget/TextView;",
        "avoidYouTitle",
        "getAvoidYouTitle",
        "dataLayout",
        "Landroid/widget/LinearLayout;",
        "getDataLayout",
        "()Landroid/widget/LinearLayout;",
        "emptyImg",
        "Landroid/widget/ImageView;",
        "getEmptyImg",
        "()Landroid/widget/ImageView;",
        "emptyLayout",
        "getEmptyLayout",
        "youAvoidDivider",
        "getYouAvoidDivider",
        "youAvoidSubTitle",
        "getYouAvoidSubTitle",
        "youAvoidTitle",
        "getYouAvoidTitle",
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
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/LinearLayout;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0ae3

    .line 373
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.youAvoidTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a00ff

    .line 374
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.avoidYouTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0ae2

    .line 375
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.youAvoidSubTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a00fe

    .line 376
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.avoidYouSubTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a02d9

    .line 377
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.data_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->f:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0386

    .line 378
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.empty_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0ae0

    .line 379
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.youAvoidDivider)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->i:Landroid/view/View;

    const p1, 0x7f0a00fc

    .line 380
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.avoidYouDivider)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->j:Landroid/view/View;

    const p1, 0x7f0a037e

    .line 381
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "root.findViewById(R.id.emptyImg)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->h:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getAvoidYouDivider()Landroid/view/View;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->j:Landroid/view/View;

    return-object v0
.end method

.method public final getAvoidYouSubTitle()Landroid/widget/TextView;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getAvoidYouTitle()Landroid/widget/TextView;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDataLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getEmptyImg()Landroid/widget/ImageView;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getEmptyLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getYouAvoidDivider()Landroid/view/View;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->i:Landroid/view/View;

    return-object v0
.end method

.method public final getYouAvoidSubTitle()Landroid/widget/TextView;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getYouAvoidTitle()Landroid/widget/TextView;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method
