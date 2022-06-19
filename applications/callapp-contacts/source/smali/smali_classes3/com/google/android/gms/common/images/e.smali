.class public abstract Lcom/google/android/gms/common/images/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/common/images/c;

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/e;->b:I

    new-instance v0, Lcom/google/android/gms/common/images/c;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/c;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/c;

    iput p2, p0, Lcom/google/android/gms/common/images/e;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final a(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/images/e;->b:I

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/e;->a()V

    return-void
.end method

.method final a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/e;->a()V

    return-void
.end method
