.class public Lcarbon/drawable/DefaultIconColorAccentInverseStateList;
.super Landroid/content/res/ColorStateList;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x7

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

    new-array v3, v2, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [I

    const v6, 0x10102fe

    aput v6, v3, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    const v7, 0x10100a1

    aput v7, v3, v5

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    const v8, 0x101009c

    aput v8, v3, v5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v5, [I

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v0, v0, [I

    sget v3, Lh80;->carbon_colorDisabledInverse:I

    invoke-static {p1, v3}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v5

    sget v3, Lh80;->carbon_colorError:I

    invoke-static {p1, v3}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    sget v2, Lh80;->colorAccent:I

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v4

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v7

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v8

    sget v2, Lh80;->carbon_iconColorInverse:I

    invoke-static {p1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v9

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-void
.end method
