.class final Le/c/a/b/u/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/u/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Le/c/a/b/w/h;

.field b:Z


# direct methods
.method public constructor <init>(Le/c/a/b/u/a$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Le/c/a/b/u/a$b;->a:Le/c/a/b/w/h;

    invoke-virtual {v0}, Le/c/a/b/w/h;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/c/a/b/w/h;

    iput-object v0, p0, Le/c/a/b/u/a$b;->a:Le/c/a/b/w/h;

    iget-boolean p1, p1, Le/c/a/b/u/a$b;->b:Z

    iput-boolean p1, p0, Le/c/a/b/u/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Le/c/a/b/w/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Le/c/a/b/u/a$b;->a:Le/c/a/b/w/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/a/b/u/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Le/c/a/b/u/a;
    .locals 3

    new-instance v0, Le/c/a/b/u/a;

    new-instance v1, Le/c/a/b/u/a$b;

    invoke-direct {v1, p0}, Le/c/a/b/u/a$b;-><init>(Le/c/a/b/u/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/c/a/b/u/a;-><init>(Le/c/a/b/u/a$b;Le/c/a/b/u/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Le/c/a/b/u/a$b;->a()Le/c/a/b/u/a;

    move-result-object v0

    return-object v0
.end method
