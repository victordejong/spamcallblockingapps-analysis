.class public Lcom/telguarder/features/intro/IntroPageFragmentAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "IntroPageFragmentAdapter.java"


# static fields
.field public static pos:I


# instance fields
.field private myFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;->myFragments:Ljava/util/List;

    return-void
.end method

.method public static getPos()I
    .locals 1

    .line 39
    sget v0, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;->pos:I

    return v0
.end method

.method public static setPos(I)V
    .locals 0

    .line 44
    sput p0, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;->pos:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;->myFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;->myFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
