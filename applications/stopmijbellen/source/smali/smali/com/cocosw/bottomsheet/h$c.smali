.class public Lcom/cocosw/bottomsheet/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/cocosw/bottomsheet/a;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/content/DialogInterface$OnClickListener;

.field public f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h$c;->a:Landroid/content/Context;

    const v0, 0x7f12011b

    .line 3
    iput v0, p0, Lcom/cocosw/bottomsheet/h$c;->c:I

    .line 4
    new-instance v1, Lcom/cocosw/bottomsheet/a;

    invoke-direct {v1, p1}, Lcom/cocosw/bottomsheet/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cocosw/bottomsheet/h$c;->b:Lcom/cocosw/bottomsheet/a;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f04007a

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/h$c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;
    .locals 8

    .line 1
    new-instance v7, Lcom/cocosw/bottomsheet/b;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h$c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/b;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 2
    iput-object p2, v7, Lcom/cocosw/bottomsheet/b;->i:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h$c;->b:Lcom/cocosw/bottomsheet/a;

    .line 4
    iget-object p1, p1, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/cocosw/bottomsheet/a;->d(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/cocosw/bottomsheet/a;->a(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public b()Lcom/cocosw/bottomsheet/h;
    .locals 3

    .line 1
    new-instance v0, Lcom/cocosw/bottomsheet/h;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h$c;->a:Landroid/content/Context;

    iget v2, p0, Lcom/cocosw/bottomsheet/h$c;->c:I

    invoke-direct {v0, v1, v2}, Lcom/cocosw/bottomsheet/h;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p0, v0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
