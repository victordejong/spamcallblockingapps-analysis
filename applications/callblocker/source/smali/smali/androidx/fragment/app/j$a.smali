.class Landroidx/fragment/app/j$a;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/animation/Animation;

.field public final b:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 3409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3410
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    .line 3411
    iput-object p1, p0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    .line 3412
    if-nez p1, :cond_0

    .line 3413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3415
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 3401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3402
    iput-object p1, p0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    .line 3403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    .line 3404
    if-nez p1, :cond_0

    .line 3405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3407
    :cond_0
    return-void
.end method
