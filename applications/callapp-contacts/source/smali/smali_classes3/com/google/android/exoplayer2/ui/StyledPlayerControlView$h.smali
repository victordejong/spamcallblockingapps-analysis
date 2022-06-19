.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 2265
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 2266
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->r:Landroid/widget/TextView;

    .line 2267
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->s:Landroid/view/View;

    return-void
.end method
