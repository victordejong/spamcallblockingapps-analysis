.class public Lxb0$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lzh0;

.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/ColorFilter;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Lxb0;Lzh0;II)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lxb0$a;->b:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lxb0$a;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lxb0$a;->a:Lzh0;

    iput p3, p0, Lxb0$a;->c:I

    iput p4, p0, Lxb0$a;->d:I

    return-void
.end method

.method public static synthetic a(Lxb0$a;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lxb0$a;->b:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Lxb0;

    iget-object v1, p0, Lxb0$a;->a:Lzh0;

    iget v2, p0, Lxb0$a;->c:I

    iget v3, p0, Lxb0$a;->d:I

    invoke-direct {v0, v1, v2, v3}, Lxb0;-><init>(Lzh0;II)V

    return-object v0
.end method
