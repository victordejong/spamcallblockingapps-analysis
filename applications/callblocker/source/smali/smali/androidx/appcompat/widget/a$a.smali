.class public Landroidx/appcompat/widget/a$a;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroidx/core/h/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/appcompat/widget/a;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/a;)V
    .locals 1

    .prologue
    .line 273
    iput-object p1, p0, Landroidx/appcompat/widget/a$a;->b:Landroidx/appcompat/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/a$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/h/y;I)Landroidx/appcompat/widget/a$a;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroidx/appcompat/widget/a$a;->b:Landroidx/appcompat/widget/a;

    iput-object p1, v0, Landroidx/appcompat/widget/a;->f:Landroidx/core/h/y;

    .line 280
    iput p2, p0, Landroidx/appcompat/widget/a$a;->a:I

    .line 281
    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Landroidx/appcompat/widget/a$a;->b:Landroidx/appcompat/widget/a;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a;->a(Landroidx/appcompat/widget/a;I)V

    .line 287
    iput-boolean v1, p0, Landroidx/appcompat/widget/a$a;->c:Z

    .line 288
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Landroidx/appcompat/widget/a$a;->c:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a$a;->b:Landroidx/appcompat/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/a;->f:Landroidx/core/h/y;

    .line 295
    iget-object v0, p0, Landroidx/appcompat/widget/a$a;->b:Landroidx/appcompat/widget/a;

    iget v1, p0, Landroidx/appcompat/widget/a$a;->a:I

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a;->b(Landroidx/appcompat/widget/a;I)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/a$a;->c:Z

    .line 301
    return-void
.end method
