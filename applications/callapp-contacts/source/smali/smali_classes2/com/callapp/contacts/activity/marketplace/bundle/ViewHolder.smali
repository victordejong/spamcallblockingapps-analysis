.class public final Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0019\u0010\u000c\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "tvSubtitle",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "getTvSubtitle",
        "()Landroid/widget/TextView;",
        "tvTitle",
        "getTvTitle",
        "videoBundleFrame",
        "getVideoBundleFrame",
        "()Landroid/view/View;",
        "videoImage",
        "Landroid/widget/ImageView;",
        "getVideoImage",
        "()Landroid/widget/ImageView;",
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
.field private final r:Landroid/widget/TextView;

.field private final s:Landroid/widget/TextView;

.field private final t:Landroid/widget/ImageView;

.field private final u:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0a40

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->r:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0a3e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->s:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0a9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->t:Landroid/widget/ImageView;

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0a9a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->u:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getTvSubtitle()Landroid/widget/TextView;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getVideoBundleFrame()Landroid/view/View;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->u:Landroid/view/View;

    return-object v0
.end method

.method public final getVideoImage()Landroid/widget/ImageView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;->t:Landroid/widget/ImageView;

    return-object v0
.end method
