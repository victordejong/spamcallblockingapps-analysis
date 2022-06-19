.class public Lcarbon/drawable/DefaultTextColorPrimaryStateList;
.super Landroid/content/res/ColorStateList;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lh80;->carbon_state_invalid:I

    aput v4, v3, v5

    aput-object v3, v1, v2

    new-array v3, v5, [I

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v0, v0, [I

    const v3, 0x1010212

    invoke-static {p1, v3}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v5

    sget v3, Lh80;->carbon_colorError:I

    invoke-static {p1, v3}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    sget v2, Lh80;->colorPrimary:I

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-void
.end method
