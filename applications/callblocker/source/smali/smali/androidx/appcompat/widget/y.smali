.class public Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/Rect;

.field private static final b:[I

.field private static final c:[I

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/y;->b:[I

    .line 46
    new-array v0, v2, [I

    sput-object v0, Landroidx/appcompat/widget/y;->c:[I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/y;->a:Landroid/graphics/Rect;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 207
    :goto_0
    :pswitch_0
    return-object p1

    .line 201
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 202
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 203
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 204
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 205
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 206
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "android.graphics.drawable.VectorDrawable"

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Landroidx/appcompat/widget/y;->c(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    .line 144
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_2

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 155
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_7

    .line 156
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 159
    invoke-static {v4}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    .line 160
    goto :goto_0

    .line 158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_4
    instance-of v0, p0, Landroidx/core/graphics/drawable/c;

    if-eqz v0, :cond_5

    .line 165
    check-cast p0, Landroidx/core/graphics/drawable/c;

    .line 167
    invoke-interface {p0}, Landroidx/core/graphics/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0

    .line 168
    :cond_5
    instance-of v0, p0, Landroidx/appcompat/b/a/c;

    if-eqz v0, :cond_6

    .line 169
    check-cast p0, Landroidx/appcompat/b/a/c;

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/b/a/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_6
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_7

    .line 173
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0

    .line 176
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 187
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/y;->b:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 194
    return-void

    .line 190
    :cond_1
    sget-object v1, Landroidx/appcompat/widget/y;->c:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method
