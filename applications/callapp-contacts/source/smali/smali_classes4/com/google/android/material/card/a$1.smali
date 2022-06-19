.class final Lcom/google/android/material/card/a$1;
.super Landroid/graphics/drawable/InsetDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/card/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/card/a;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    .line 508
    iput-object p1, p0, Lcom/google/android/material/card/a$1;->a:Lcom/google/android/material/card/a;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method


# virtual methods
.method public final getMinimumHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
