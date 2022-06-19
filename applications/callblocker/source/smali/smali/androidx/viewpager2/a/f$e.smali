.class Landroidx/viewpager2/a/f$e;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput p1, p0, Landroidx/viewpager2/a/f$e;->a:I

    .line 1064
    iput-object p2, p0, Landroidx/viewpager2/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 1065
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Landroidx/viewpager2/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/viewpager2/a/f$e;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1070
    return-void
.end method
