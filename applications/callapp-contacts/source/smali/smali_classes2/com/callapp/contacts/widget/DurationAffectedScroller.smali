.class public Lcom/callapp/contacts/widget/DurationAffectedScroller;
.super Landroid/widget/Scroller;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/DurationAffectedScroller;->b:Z

    .line 13
    iput p3, p0, Lcom/callapp/contacts/widget/DurationAffectedScroller;->a:I

    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6

    .line 19
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/DurationAffectedScroller;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p5, p0, Lcom/callapp/contacts/widget/DurationAffectedScroller;->a:I

    :goto_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
