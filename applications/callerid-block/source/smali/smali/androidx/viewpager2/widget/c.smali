.class final Landroidx/viewpager2/widget/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/viewpager2/widget/e;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/e;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/viewpager2/widget/c;->a:Landroidx/viewpager2/widget/e;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/c;->a:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->i()Z

    move-result v0

    return v0
.end method
