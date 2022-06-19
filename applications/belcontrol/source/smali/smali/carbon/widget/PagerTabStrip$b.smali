.class public Lcarbon/widget/PagerTabStrip$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/PagerTabStrip;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/PagerTabStrip$SavedState;

.field public final synthetic b:Lcarbon/widget/PagerTabStrip;


# direct methods
.method public constructor <init>(Lcarbon/widget/PagerTabStrip;Lcarbon/widget/PagerTabStrip$SavedState;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip$b;->b:Lcarbon/widget/PagerTabStrip;

    iput-object p2, p0, Lcarbon/widget/PagerTabStrip$b;->a:Lcarbon/widget/PagerTabStrip$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip$b;->b:Lcarbon/widget/PagerTabStrip;

    iget-object v1, p0, Lcarbon/widget/PagerTabStrip$b;->a:Lcarbon/widget/PagerTabStrip$SavedState;

    invoke-virtual {v1}, Lcarbon/widget/PagerTabStrip$SavedState;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    return-void
.end method
