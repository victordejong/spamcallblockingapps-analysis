.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;",
        "(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;)V",
        "fromTitle",
        "Landroid/widget/TextView;",
        "getFromTitle",
        "()Landroid/widget/TextView;",
        "setFromTitle",
        "(Landroid/widget/TextView;)V",
        "numberOfIdentification",
        "getNumberOfIdentification",
        "setNumberOfIdentification",
        "resourceIcon",
        "Landroid/widget/ImageView;",
        "getResourceIcon",
        "()Landroid/widget/ImageView;",
        "setResourceIcon",
        "(Landroid/widget/ImageView;)V",
        "separatorCalls",
        "Landroid/view/View;",
        "getSeparatorCalls",
        "()Landroid/view/View;",
        "setSeparatorCalls",
        "(Landroid/view/View;)V",
        "source",
        "getSource",
        "setSource",
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
.field final synthetic r:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->r:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

    invoke-virtual {p2}, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 53
    iget-object p1, p2, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->d:Landroid/widget/ImageView;

    const-string v0, "binding.resourceIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->s:Landroid/widget/ImageView;

    .line 54
    iget-object p1, p2, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->c:Landroid/widget/TextView;

    const-string v0, "binding.numberOfIdentification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->t:Landroid/widget/TextView;

    .line 55
    iget-object p1, p2, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->b:Landroid/widget/TextView;

    const-string v0, "binding.fromTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->u:Landroid/widget/TextView;

    .line 56
    iget-object p1, p2, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->f:Landroid/widget/TextView;

    const-string v0, "binding.source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->v:Landroid/widget/TextView;

    .line 57
    iget-object p1, p2, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->e:Landroid/view/View;

    const-string p2, "binding.separatorCalls"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->w:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getFromTitle()Landroid/widget/TextView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNumberOfIdentification()Landroid/widget/TextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getResourceIcon()Landroid/widget/ImageView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getSeparatorCalls()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->w:Landroid/view/View;

    return-object v0
.end method

.method public final getSource()Landroid/widget/TextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->v:Landroid/widget/TextView;

    return-object v0
.end method
