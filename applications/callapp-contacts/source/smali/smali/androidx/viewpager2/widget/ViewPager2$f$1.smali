.class final Landroidx/viewpager2/widget/ViewPager2$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2$f;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2$f;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f$1;->a:Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 2

    .line 1334
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 1335
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f$1;->a:Landroidx/viewpager2/widget/ViewPager2$f;

    .line 1675
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 1335
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$f;->e(I)V

    return v1
.end method
