.class public Lp8;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(ILq8;)Landroid/graphics/ColorFilter;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Lr8;->a(Lq8;)Landroid/graphics/BlendMode;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lr8;->b(Lq8;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v1
.end method
