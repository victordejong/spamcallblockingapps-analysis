.class public Landroidx/appcompat/widget/Toolbar$b;
.super Landroidx/appcompat/app/a$a;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 2358
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$a;-><init>(II)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2359
    const v0, 0x800013

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 2360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 2354
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2355
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2389
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2390
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2382
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2385
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2386
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a$a;)V
    .locals 1

    .prologue
    .line 2378
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroidx/appcompat/app/a$a;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2379
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$b;)V
    .locals 1

    .prologue
    .line 2372
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroidx/appcompat/app/a$a;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2374
    iget v0, p1, Landroidx/appcompat/widget/Toolbar$b;->b:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2375
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2393
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->leftMargin:I

    .line 2394
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    .line 2395
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->rightMargin:I

    .line 2396
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    .line 2397
    return-void
.end method
