.class public final Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShareAppCViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000bR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;",
        "",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;Landroid/view/View;)V",
        "divider",
        "getDivider",
        "()Landroid/view/View;",
        "shareCardButton",
        "Landroid/widget/TextView;",
        "getShareCardButton",
        "()Landroid/widget/TextView;",
        "shareCardDescription",
        "getShareCardDescription",
        "shareCardIcon",
        "Landroid/widget/ImageView;",
        "getShareCardIcon",
        "()Landroid/widget/ImageView;",
        "shareCardName",
        "getShareCardName",
        "shareCardProfilePicture",
        "Lcom/callapp/contacts/widget/ProfilePictureView;",
        "getShareCardProfilePicture",
        "()Lcom/callapp/contacts/widget/ProfilePictureView;",
        "setShareCardProfilePicture",
        "(Lcom/callapp/contacts/widget/ProfilePictureView;)V",
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

.field private final b:Landroid/widget/ImageView;

.field private c:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0803

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.shareCardIcon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a0805

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026.shareCardProfilePicture)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    const p1, 0x7f0a0804

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.shareCardName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0802

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.shareCardDescription)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a0800

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.shareCardButton)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->f:Landroid/widget/TextView;

    const p1, 0x7f0a0333

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.divider)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getDivider()Landroid/view/View;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->g:Landroid/view/View;

    return-object v0
.end method

.method public final getShareCardButton()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getShareCardDescription()Landroid/widget/TextView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getShareCardIcon()Landroid/widget/ImageView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getShareCardName()Landroid/widget/TextView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getShareCardProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method
