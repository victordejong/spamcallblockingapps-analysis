.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;
.super Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallDurationViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder<",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
        "binding",
        "Lcom/callapp/contacts/databinding/CallDurationItemBinding;",
        "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationItemBinding;)V",
        "bind",
        "",
        "item",
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
.field final r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

.field final synthetic s:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/databinding/CallDurationItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->s:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    .line 306
    invoke-virtual {p2}, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    return-void
.end method
