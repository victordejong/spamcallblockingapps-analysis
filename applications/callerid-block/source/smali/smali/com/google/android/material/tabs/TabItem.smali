.class public Lcom/google/android/material/tabs/TabItem;
.super Landroid/view/View;
.source ""


# instance fields
.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Le/c/a/b/l;->TabItem:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/d0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/d0;

    move-result-object p1

    sget p2, Le/c/a/b/l;->TabItem_android_text:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/d0;->p(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/tabs/TabItem;->b:Ljava/lang/CharSequence;

    sget p2, Le/c/a/b/l;->TabItem_android_icon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/d0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/tabs/TabItem;->c:Landroid/graphics/drawable/Drawable;

    sget p2, Le/c/a/b/l;->TabItem_android_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/d0;->n(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tabs/TabItem;->d:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->w()V

    return-void
.end method
