.class public final Ln40;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lp40;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lp40;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln40;->a:Lp40;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ln40;->a:Lp40;

    invoke-virtual {v0}, Lp40;->g()Z

    move-result v0

    return v0
.end method
