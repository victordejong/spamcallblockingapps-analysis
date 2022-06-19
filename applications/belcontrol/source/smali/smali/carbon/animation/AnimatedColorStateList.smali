.class public Lcarbon/animation/AnimatedColorStateList;
.super Landroid/content/res/ColorStateList;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcarbon/animation/AnimatedColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/reflect/Field;

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Ljava/lang/reflect/Field;


# instance fields
.field public final a:[[I

.field public b:[I

.field public c:Landroid/animation/ValueAnimator;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/content/res/ColorStateList;

    const-string v1, "mStateSpecs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcarbon/animation/AnimatedColorStateList;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/content/res/ColorStateList;

    const-string v2, "mColors"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcarbon/animation/AnimatedColorStateList;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/content/res/ColorStateList;

    const-string v2, "mDefaultColor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcarbon/animation/AnimatedColorStateList;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    new-instance v0, Lcarbon/animation/AnimatedColorStateList$a;

    invoke-direct {v0}, Lcarbon/animation/AnimatedColorStateList$a;-><init>()V

    sput-object v0, Lcarbon/animation/AnimatedColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([[I[ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    iput-object p2, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->a:[[I

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lrc0;

    invoke-direct {p2}, Lrc0;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lu90;

    invoke-direct {p2, p0, p3}, Lu90;-><init>(Lcarbon/animation/AnimatedColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;
    .locals 3

    :try_start_0
    sget-object v0, Lcarbon/animation/AnimatedColorStateList;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sget-object v1, Lcarbon/animation/AnimatedColorStateList;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lcarbon/animation/AnimatedColorStateList;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v2, Lcarbon/animation/AnimatedColorStateList;

    invoke-direct {v2, v0, v1, p1}, Lcarbon/animation/AnimatedColorStateList;-><init>([[I[ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Lcarbon/animation/AnimatedColorStateList;->h:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcarbon/animation/AnimatedColorStateList;->d:I

    invoke-interface {p1, p2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public synthetic d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/animation/AnimatedColorStateList;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public e([I)V
    .locals 5

    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcarbon/animation/AnimatedColorStateList;->a()V

    :cond_1
    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->a:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v3, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v2, 0x1

    aput v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iput-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    iput v0, p0, Lcarbon/animation/AnimatedColorStateList;->d:I

    iget-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    return-void
.end method

.method public getColorForState([II)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcarbon/animation/AnimatedColorStateList;->b:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcarbon/animation/AnimatedColorStateList;->d:I

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
