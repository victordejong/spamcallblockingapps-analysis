.class Lb/h/i/d$c;
.super Ljava/lang/Object;
.source "SplashScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Lb/h/i/d$d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/c/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/i/d$c;->a:Landroid/app/Activity;

    .line 2
    sget-object p1, Lb/h/i/a;->a:Lb/h/i/a;

    iput-object p1, p0, Lb/h/i/d$c;->g:Lb/h/i/d$d;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/i/d$c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public b()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Lb/h/i/d$c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 3
    sget v2, Lb/h/i/b;->windowSplashScreenBackground:I

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lb/h/i/d$c;->c:Ljava/lang/Integer;

    .line 6
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lb/h/i/d$c;->d:Ljava/lang/Integer;

    .line 7
    :cond_0
    sget v2, Lb/h/i/b;->windowSplashScreenAnimatedIcon:I

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lb/h/i/d$c;->e:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_1
    sget v2, Lb/h/i/b;->splashScreenIconSize:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    sget v4, Lb/h/i/c;->splashscreen_icon_size_with_background:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_0
    iput-boolean v3, p0, Lb/h/i/d$c;->f:Z

    :cond_3
    const-string v2, "currentTheme"

    .line 13
    invoke-static {v1, v2}, Lkotlin/c/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lb/h/i/d$c;->c(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)V

    return-void
.end method

.method protected final c(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)V
    .locals 2

    const-string v0, "currentTheme"

    invoke-static {p1, v0}, Lkotlin/c/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typedValue"

    invoke-static {p2, v0}, Lkotlin/c/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lb/h/i/b;->postSplashScreenTheme:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lb/h/i/d$c;->b:I

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lb/h/i/d$c;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method
