.class final Lorg/mistergroup/shouldianswer/utils/t$c;
.super Lkotlin/c/b/a/d;
.source "RingingAlertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "RingingAlertHelper.kt"
    c = {
        0x78,
        0x79
    }
    d = "loadLocalReviews"
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/t;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$c;->c:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$c;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$c;->c:Lorg/mistergroup/shouldianswer/utils/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
