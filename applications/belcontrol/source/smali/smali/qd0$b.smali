.class public final Lqd0$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lvd0;

.field public b:Landroid/graphics/ColorFilter;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;

.field public e:F

.field public f:I

.field public g:F

.field public h:I

.field public i:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lqd0$b;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqd0$b;->e:F

    const/16 v0, 0xff

    iput v0, p0, Lqd0$b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lqd0$b;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lqd0$b;->h:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lqd0$b;->i:Landroid/graphics/Paint$Style;

    new-instance v0, Lvd0;

    iget-object v1, p1, Lqd0$b;->a:Lvd0;

    invoke-direct {v0, v1}, Lvd0;-><init>(Lvd0;)V

    iput-object v0, p0, Lqd0$b;->a:Lvd0;

    iget-object v0, p1, Lqd0$b;->b:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lqd0$b;->b:Landroid/graphics/ColorFilter;

    iget-object v0, p1, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    iget v0, p1, Lqd0$b;->f:I

    iput v0, p0, Lqd0$b;->f:I

    iget v0, p1, Lqd0$b;->e:F

    iput v0, p0, Lqd0$b;->e:F

    iget v0, p1, Lqd0$b;->g:F

    iput v0, p0, Lqd0$b;->g:F

    iget v0, p1, Lqd0$b;->h:I

    iput v0, p0, Lqd0$b;->h:I

    iget-object p1, p1, Lqd0$b;->i:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lqd0$b;->i:Landroid/graphics/Paint$Style;

    return-void
.end method

.method public constructor <init>(Lvd0;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqd0$b;->e:F

    const/16 v0, 0xff

    iput v0, p0, Lqd0$b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lqd0$b;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lqd0$b;->h:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lqd0$b;->i:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lqd0$b;->a:Lvd0;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lqd0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqd0;-><init>(Lqd0$b;Lqd0$a;)V

    return-object v0
.end method
