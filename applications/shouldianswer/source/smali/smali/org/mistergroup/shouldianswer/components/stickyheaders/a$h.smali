.class public Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "SectioningAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 119
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->a:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 120
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->b:I

    return-void
.end method
