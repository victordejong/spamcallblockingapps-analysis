.class Lcom/google/android/material/d/b$1;
.super Landroid/graphics/drawable/InsetDrawable;
.source "MaterialCardViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/d/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/d/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/d/b;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/material/d/b$1;->a:Lcom/google/android/material/d/b;

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
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method
