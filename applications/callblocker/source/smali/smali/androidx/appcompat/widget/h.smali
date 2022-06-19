.class Landroidx/appcompat/widget/h;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private b:Landroid/content/res/ColorStateList;

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;

    .line 39
    iput-object v1, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;

    .line 40
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->d:Z

    .line 41
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->e:Z

    .line 53
    iput-object p1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    .line 54
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->b(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 159
    :cond_0
    return p1
.end method

.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->d:Z

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->d()V

    .line 102
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->e:Z

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->d()V

    .line 113
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/a$j;->CompoundButton:[I

    invoke-virtual {v1, p1, v2, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    :try_start_0
    sget v2, Landroidx/appcompat/a$j;->CompoundButton_buttonCompat:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    sget v2, Landroidx/appcompat/a$j;->CompoundButton_buttonCompat:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 65
    :try_start_1
    iget-object v3, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    iget-object v4, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    .line 66
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const/4 v0, 0x1

    .line 74
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    sget v0, Landroidx/appcompat/a$j;->CompoundButton_android_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget v0, Landroidx/appcompat/a$j;->CompoundButton_android_button:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    iget-object v3, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    .line 79
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    sget v0, Landroidx/appcompat/a$j;->CompoundButton_buttonTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    sget v2, Landroidx/appcompat/a$j;->CompoundButton_buttonTint:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_2
    sget v0, Landroidx/appcompat/a$j;->CompoundButton_buttonTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    sget v2, Landroidx/appcompat/a$j;->CompoundButton_buttonTintMode:I

    const/4 v3, -0x1

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 88
    invoke-static {v2, v3}, Landroidx/appcompat/widget/y;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    throw v0

    .line 68
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z

    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->d()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->b(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->e:Z

    if-eqz v1, :cond_4

    .line 133
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->d:Z

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 138
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->e:Z

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 143
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 146
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_4
    return-void
.end method
