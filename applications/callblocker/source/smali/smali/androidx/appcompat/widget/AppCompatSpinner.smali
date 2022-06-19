.class public Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/h/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$c;,
        Landroidx/appcompat/widget/AppCompatSpinner$a;,
        Landroidx/appcompat/widget/AppCompatSpinner$e;,
        Landroidx/appcompat/widget/AppCompatSpinner$b;,
        Landroidx/appcompat/widget/AppCompatSpinner$d;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field a:I

.field final b:Landroid/graphics/Rect;

.field private final d:Landroidx/appcompat/widget/f;

.field private final e:Landroid/content/Context;

.field private f:Landroidx/appcompat/widget/ab;

.field private g:Landroid/widget/SpinnerAdapter;

.field private final h:Z

.field private i:Landroidx/appcompat/widget/AppCompatSpinner$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/a$a;->spinnerStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 140
    sget v0, Landroidx/appcompat/a$a;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    .line 174
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    .line 205
    sget-object v0, Landroidx/appcompat/a$j;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v3

    .line 208
    new-instance v0, Landroidx/appcompat/widget/f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    .line 210
    if-eqz p5, :cond_4

    .line 211
    new-instance v0, Landroidx/appcompat/view/d;

    invoke-direct {v0, p1, p5}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    .line 221
    :goto_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 224
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 226
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p4

    .line 232
    :cond_0
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    :cond_1
    :goto_1
    packed-switch p4, :pswitch_data_0

    .line 274
    :goto_2
    sget v0, Landroidx/appcompat/a$j;->Spinner_android_entries:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->f(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_2

    .line 276
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, p1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    sget v0, Landroidx/appcompat/a$g;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 279
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 282
    :cond_2
    invoke-virtual {v3}, Landroidx/appcompat/widget/ap;->a()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Z

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    .line 293
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 294
    return-void

    .line 213
    :cond_4
    sget v0, Landroidx/appcompat/a$j;->Spinner_popupTheme:I

    invoke-virtual {v3, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    new-instance v1, Landroidx/appcompat/view/d;

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    goto :goto_0

    .line 217
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 230
    :goto_3
    :try_start_2
    const-string/jumbo v4, "AppCompatSpinner"

    const-string/jumbo v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    .line 233
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    :cond_6
    throw v0

    .line 240
    :pswitch_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    .line 241
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    sget v1, Landroidx/appcompat/a$j;->Spinner_android_prompt:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 245
    :pswitch_1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    sget-object v4, Landroidx/appcompat/a$j;->Spinner:[I

    invoke-static {v1, p2, v4, p3, v6}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v1

    .line 248
    sget v4, Landroidx/appcompat/a$j;->Spinner_android_dropDownWidth:I

    const/4 v5, -0x2

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/widget/ap;->f(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    .line 250
    sget v4, Landroidx/appcompat/a$j;->Spinner_android_popupBackground:I

    .line 251
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 250
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 252
    sget v4, Landroidx/appcompat/a$j;->Spinner_android_prompt:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v1}, Landroidx/appcompat/widget/ap;->a()V

    .line 255
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    .line 256
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$1;

    invoke-direct {v1, p0, p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/ab;

    goto/16 :goto_2

    .line 232
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 229
    :catch_1
    move-exception v0

    goto :goto_3

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 550
    if-nez p1, :cond_0

    .line 590
    :goto_0
    return v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 560
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 565
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v4, v1, 0xf

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 566
    sub-int v2, v8, v1

    .line 567
    rsub-int/lit8 v2, v2, 0xf

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v0

    move-object v2, v3

    move v4, v0

    .line 568
    :goto_1
    if-ge v5, v8, :cond_2

    .line 569
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 570
    if-eq v0, v1, :cond_4

    move-object v2, v3

    .line 574
    :goto_2
    invoke-interface {p1, v5, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 575
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 576
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    :cond_1
    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 581
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 568
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    .line 585
    :cond_2
    if-eqz p2, :cond_3

    .line 586
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 587
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(II)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, v2, v2}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(II)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 547
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->f()I

    move-result v0

    .line 370
    :goto_0
    return v0

    .line 367
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 368
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->c()I

    move-result v0

    .line 344
    :goto_0
    return v0

    .line 341
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 342
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 385
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    .line 389
    :goto_0
    return v0

    .line 386
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 387
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$e;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 322
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 323
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    .line 509
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    .line 538
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 413
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->d()V

    .line 416
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 428
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 430
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 431
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 432
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 434
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 432
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v1

    .line 432
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 437
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 617
    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 619
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    iget-boolean v0, p1, Landroidx/appcompat/widget/AppCompatSpinner$d;->a:Z

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 640
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 643
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 609
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 610
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;-><init>(Landroid/os/Parcelable;)V

    .line 611
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroidx/appcompat/widget/AppCompatSpinner$d;->a:Z

    .line 612
    return-object v1

    .line 611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ab;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->a()V

    .line 446
    :cond_0
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .prologue
    .line 396
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Z

    if-nez v0, :cond_1

    .line 397
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 405
    :goto_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    new-instance v2, Landroidx/appcompat/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$b;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 481
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 470
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->c(I)V

    .line 351
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->b(I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 353
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 333
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_1

    .line 376
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 378
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 309
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a(Ljava/lang/CharSequence;)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 496
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 525
    :cond_0
    return-void
.end method
