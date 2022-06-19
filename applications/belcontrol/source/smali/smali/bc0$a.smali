.class public Lbc0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lbc0$a;->g:I

    iput v0, p0, Lbc0$a;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lbc0$a;->i:I

    iput v0, p0, Lbc0$a;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lbc0$a;->k:I

    iput v0, p0, Lbc0$a;->l:I

    return-void
.end method

.method public constructor <init>(Lbc0$a;Lbc0;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lbc0$a;->g:I

    iput v0, p0, Lbc0$a;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lbc0$a;->i:I

    iput v0, p0, Lbc0$a;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lbc0$a;->k:I

    iput v0, p0, Lbc0$a;->l:I

    iget-object v0, p1, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-object p3, p0, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object p2, p1, Lbc0$a;->b:[I

    iput-object p2, p0, Lbc0$a;->b:[I

    iget p2, p1, Lbc0$a;->c:I

    iput p2, p0, Lbc0$a;->c:I

    iget p2, p1, Lbc0$a;->d:I

    iput p2, p0, Lbc0$a;->d:I

    iget p2, p1, Lbc0$a;->e:I

    iput p2, p0, Lbc0$a;->e:I

    iget p2, p1, Lbc0$a;->f:I

    iput p2, p0, Lbc0$a;->f:I

    iget p2, p1, Lbc0$a;->g:I

    iput p2, p0, Lbc0$a;->g:I

    iget p2, p1, Lbc0$a;->h:I

    iput p2, p0, Lbc0$a;->h:I

    iget p2, p1, Lbc0$a;->i:I

    iput p2, p0, Lbc0$a;->i:I

    iget p2, p1, Lbc0$a;->j:I

    iput p2, p0, Lbc0$a;->j:I

    iget p2, p1, Lbc0$a;->k:I

    iput p2, p0, Lbc0$a;->k:I

    iget p1, p1, Lbc0$a;->l:I

    iput p1, p0, Lbc0$a;->l:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lbc0$a;->b:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldc0;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
