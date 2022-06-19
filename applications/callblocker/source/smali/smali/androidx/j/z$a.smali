.class Landroidx/j/z$a;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/reflect/Method;


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroidx/j/z;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 116
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/j/z$a;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/z;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    .line 143
    iput-object p2, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    .line 144
    iput-object p3, p0, Landroidx/j/z$a;->c:Landroid/view/View;

    .line 145
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/j/z$a;->setRight(I)V

    .line 146
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/j/z$a;->setBottom(I)V

    .line 147
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    iput-object p4, p0, Landroidx/j/z$a;->e:Landroidx/j/z;

    .line 149
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Landroidx/j/z$a;->f:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    return-void
.end method

.method private a([I)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    new-array v0, v1, [I

    .line 270
    new-array v1, v1, [I

    .line 271
    iget-object v2, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 272
    iget-object v2, p0, Landroidx/j/z$a;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 273
    aget v2, v1, v4

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, p1, v4

    .line 274
    aget v1, v1, v5

    aget v0, v0, v5

    sub-int v0, v1, v0

    aput v0, p1, v5

    .line 275
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroidx/j/z$a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/z$a;->f:Z

    .line 228
    iget-object v0, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroidx/j/z$a;->a()V

    .line 159
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/j/z$a;->invalidate(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 169
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-direct {p0}, Landroidx/j/z$a;->a()V

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 189
    iget-object v1, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-array v1, v2, [I

    .line 194
    new-array v2, v2, [I

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 196
    iget-object v3, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 197
    aget v3, v1, v4

    aget v4, v2, v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroidx/core/h/u;->f(Landroid/view/View;I)V

    .line 198
    aget v1, v1, v5

    aget v2, v2, v5

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 200
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/j/z$a;->invalidate(Landroid/graphics/Rect;)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 176
    invoke-direct {p0}, Landroidx/j/z$a;->b()V

    .line 178
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    invoke-direct {p0}, Landroidx/j/z$a;->b()V

    .line 216
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 239
    new-array v1, v2, [I

    .line 240
    new-array v2, v2, [I

    .line 241
    iget-object v3, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 242
    iget-object v3, p0, Landroidx/j/z$a;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    aget v3, v2, v0

    aget v4, v1, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aget v2, v2, v5

    aget v1, v1, v5

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/j/z$a;->c:Landroid/view/View;

    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/j/z$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 247
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v1, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    move v2, v0

    .line 249
    :goto_1
    if-ge v2, v1, :cond_1

    .line 250
    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 248
    :cond_0
    iget-object v1, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 300
    aget v0, p1, v2

    aget v1, p1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 301
    iget-object v0, p0, Landroidx/j/z$a;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 302
    aput v2, p1, v2

    .line 303
    aput v2, p1, v3

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 305
    invoke-direct {p0, v0}, Landroidx/j/z$a;->a([I)V

    .line 306
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 307
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 310
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/j/z$a;->invalidate(Landroid/graphics/Rect;)V

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/j/z$a;->invalidate(Landroid/graphics/Rect;)V

    .line 235
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/z$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
