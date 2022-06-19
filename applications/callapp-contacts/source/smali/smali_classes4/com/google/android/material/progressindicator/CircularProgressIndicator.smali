.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_CircularProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Lcom/google/android/material/a$b;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 71
    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, p2}, Lcom/google/android/material/progressindicator/i;->a(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, p2}, Lcom/google/android/material/progressindicator/e;->a(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/b;
    .locals 1

    .line 2080
    new-instance v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final setIndicatorDirection(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->i:I

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    return-void
.end method

.method public final setIndicatorInset(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    if-eq v0, p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setIndicatorSize(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    if-eq v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    .line 159
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->c()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setTrackThickness(I)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    .line 104
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->c()V

    return-void
.end method
