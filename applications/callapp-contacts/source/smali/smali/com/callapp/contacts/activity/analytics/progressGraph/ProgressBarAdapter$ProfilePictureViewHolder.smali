.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;
.super Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProfilePictureViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder<",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
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
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
        "binding",
        "Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;",
        "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;)V",
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
.field final r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

.field final synthetic s:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->s:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    .line 273
    invoke-virtual {p2}, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->getRoot()Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    return-void
.end method
