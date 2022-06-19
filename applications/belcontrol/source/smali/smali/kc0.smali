.class public Lkc0;
.super Landroid/graphics/drawable/RippleDrawable;
.source ""

# interfaces
.implements Lhc0;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public b:Lhc0$a;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Lhc0$a;)V
    .locals 2

    sget-object v0, Lhc0$a;->c:Lhc0$a;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lkc0;->b:Lhc0$a;

    iput-object p2, p0, Lkc0;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Lhc0$a;
    .locals 1

    iget-object v0, p0, Lkc0;->b:Lhc0$a;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lkc0;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
