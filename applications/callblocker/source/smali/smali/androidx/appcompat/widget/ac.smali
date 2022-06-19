.class public Landroidx/appcompat/widget/ac;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ac$c;,
        Landroidx/appcompat/widget/ac$d;,
        Landroidx/appcompat/widget/ac$e;,
        Landroidx/appcompat/widget/ac$a;,
        Landroidx/appcompat/widget/ac$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/widget/AdapterView$OnItemClickListener;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final D:Landroidx/appcompat/widget/ac$d;

.field private final E:Landroidx/appcompat/widget/ac$c;

.field private final F:Landroidx/appcompat/widget/ac$a;

.field private G:Ljava/lang/Runnable;

.field private final H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/Rect;

.field private J:Z

.field c:Landroidx/appcompat/widget/z;

.field d:I

.field final e:Landroidx/appcompat/widget/ac$e;

.field final f:Landroid/os/Handler;

.field g:Landroid/widget/PopupWindow;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ListAdapter;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/view/View;

.field private x:I

.field private y:Landroid/database/DataSetObserver;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 86
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ac;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setEpicenterBounds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ac;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 102
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    :cond_1
    :goto_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :catch_2
    move-exception v0

    .line 105
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/a$a;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v0, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Landroidx/appcompat/widget/ac;->k:I

    .line 116
    iput v0, p0, Landroidx/appcompat/widget/ac;->l:I

    .line 119
    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/ac;->o:I

    .line 121
    iput-boolean v3, p0, Landroidx/appcompat/widget/ac;->q:Z

    .line 125
    iput v2, p0, Landroidx/appcompat/widget/ac;->t:I

    .line 127
    iput-boolean v2, p0, Landroidx/appcompat/widget/ac;->u:Z

    .line 128
    iput-boolean v2, p0, Landroidx/appcompat/widget/ac;->v:Z

    .line 129
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/ac;->d:I

    .line 132
    iput v2, p0, Landroidx/appcompat/widget/ac;->x:I

    .line 143
    new-instance v0, Landroidx/appcompat/widget/ac$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$e;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->e:Landroidx/appcompat/widget/ac$e;

    .line 144
    new-instance v0, Landroidx/appcompat/widget/ac$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$d;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->D:Landroidx/appcompat/widget/ac$d;

    .line 145
    new-instance v0, Landroidx/appcompat/widget/ac$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$c;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->E:Landroidx/appcompat/widget/ac$c;

    .line 146
    new-instance v0, Landroidx/appcompat/widget/ac$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$a;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->F:Landroidx/appcompat/widget/ac$a;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    .line 263
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->i:Landroid/content/Context;

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/os/Handler;

    .line 266
    sget-object v0, Landroidx/appcompat/a$j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 268
    sget v1, Landroidx/appcompat/a$j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ac;->m:I

    .line 270
    sget v1, Landroidx/appcompat/a$j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ac;->n:I

    .line 272
    iget v1, p0, Landroidx/appcompat/widget/ac;->n:I

    if-eqz v1, :cond_0

    .line 273
    iput-boolean v3, p0, Landroidx/appcompat/widget/ac;->p:Z

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    new-instance v0, Landroidx/appcompat/widget/m;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    .line 278
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 279
    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .prologue
    .line 1446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 1447
    sget-object v0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1449
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1450
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1449
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1458
    :goto_0
    return v0

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 1458
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 5

    .prologue
    .line 1432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 1433
    sget-object v0, Landroidx/appcompat/widget/ac;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1435
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/ac;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1441
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 792
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 793
    check-cast v0, Landroid/view/ViewGroup;

    .line 794
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 797
    :cond_0
    return-void
.end method

.method private i()I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1157
    .line 1159
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    if-nez v0, :cond_5

    .line 1160
    iget-object v7, p0, Landroidx/appcompat/widget/ac;->i:Landroid/content/Context;

    .line 1168
    new-instance v0, Landroidx/appcompat/widget/ac$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$1;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->G:Ljava/lang/Runnable;

    .line 1179
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->J:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v7, v0}, Landroidx/appcompat/widget/ac;->a(Landroid/content/Context;Z)Landroidx/appcompat/widget/z;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1180
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1184
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1185
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setFocusable(Z)V

    .line 1186
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setFocusableInTouchMode(Z)V

    .line 1187
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    new-instance v5, Landroidx/appcompat/widget/ac$2;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/ac$2;-><init>(Landroidx/appcompat/widget/ac;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1205
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->E:Landroidx/appcompat/widget/ac$c;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1207
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1211
    :cond_1
    iget-object v5, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1213
    iget-object v8, p0, Landroidx/appcompat/widget/ac;->w:Landroid/view/View;

    .line 1214
    if-eqz v8, :cond_c

    .line 1217
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1218
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1220
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1224
    iget v7, p0, Landroidx/appcompat/widget/ac;->x:I

    packed-switch v7, :pswitch_data_0

    .line 1236
    const-string/jumbo v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid hint position "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroidx/appcompat/widget/ac;->x:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :goto_1
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ltz v0, :cond_4

    .line 1246
    iget v5, p0, Landroidx/appcompat/widget/ac;->l:I

    move v0, v4

    .line 1251
    :goto_2
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1253
    invoke-virtual {v8, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1255
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1256
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move-object v5, v6

    .line 1262
    :goto_3
    iget-object v6, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    .line 1277
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_6

    .line 1279
    iget-object v5, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1280
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    .line 1284
    iget-boolean v5, p0, Landroidx/appcompat/widget/ac;->p:Z

    if-nez v5, :cond_a

    .line 1285
    iget-object v5, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iput v5, p0, Landroidx/appcompat/widget/ac;->n:I

    move v7, v0

    .line 1293
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    .line 1294
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 1295
    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroidx/appcompat/widget/ac;->n:I

    invoke-direct {p0, v0, v5, v1}, Landroidx/appcompat/widget/ac;->a(Landroid/view/View;IZ)I

    move-result v5

    .line 1297
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->u:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/ac;->k:I

    if-ne v0, v3, :cond_8

    .line 1298
    :cond_2
    add-int v0, v5, v7

    .line 1330
    :goto_7
    return v0

    :cond_3
    move v0, v2

    .line 1179
    goto/16 :goto_0

    .line 1226
    :pswitch_0
    invoke-virtual {v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1231
    :pswitch_1
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1232
    invoke-virtual {v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    move v0, v2

    move v5, v2

    .line 1249
    goto :goto_2

    .line 1264
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1265
    iget-object v5, p0, Landroidx/appcompat/widget/ac;->w:Landroid/view/View;

    .line 1266
    if-eqz v5, :cond_b

    .line 1268
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1269
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move v6, v0

    goto :goto_4

    .line 1288
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    .line 1289
    goto :goto_5

    :cond_7
    move v1, v2

    .line 1294
    goto :goto_6

    .line 1302
    :cond_8
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    packed-switch v0, :pswitch_data_1

    .line 1316
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1322
    :goto_8
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    sub-int v4, v5, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/z;->a(IIIII)I

    move-result v0

    .line 1324
    if-lez v0, :cond_9

    .line 1325
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1326
    invoke-virtual {v2}, Landroidx/appcompat/widget/z;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1327
    add-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 1330
    :cond_9
    add-int/2addr v0, v6

    goto :goto_7

    .line 1304
    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->i:Landroid/content/Context;

    .line 1305
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v8

    sub-int/2addr v0, v1

    .line 1304
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    .line 1310
    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->i:Landroid/content/Context;

    .line 1311
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 1310
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    :cond_a
    move v7, v0

    goto/16 :goto_5

    :cond_b
    move v6, v2

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_3

    .line 1224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1302
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroidx/appcompat/widget/z;
    .locals 1

    .prologue
    .line 951
    new-instance v0, Landroidx/appcompat/widget/z;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 506
    iput p1, p0, Landroidx/appcompat/widget/ac;->n:I

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ac;->p:Z

    .line 508
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 518
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ac;->I:Landroid/graphics/Rect;

    .line 519
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->B:Landroid/widget/AdapterView$OnItemClickListener;

    .line 621
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->y:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 289
    new-instance v0, Landroidx/appcompat/widget/ac$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ac$b;-><init>(Landroidx/appcompat/widget/ac;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->y:Landroid/database/DataSetObserver;

    .line 293
    :cond_0
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->j:Landroid/widget/ListAdapter;

    .line 294
    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->y:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 298
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    :cond_2
    return-void

    .line 290
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 787
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 336
    iput-boolean p1, p0, Landroidx/appcompat/widget/ac;->J:Z

    .line 337
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 338
    return-void
.end method

.method public a_()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 664
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->i()I

    move-result v2

    .line 666
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->n()Z

    move-result v6

    .line 667
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/ac;->o:I

    invoke-static {v0, v4}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;I)V

    .line 669
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 670
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v5, :cond_4

    move v4, v5

    .line 686
    :goto_1
    iget v0, p0, Landroidx/appcompat/widget/ac;->k:I

    if-ne v0, v5, :cond_a

    .line 689
    if-eqz v6, :cond_6

    .line 690
    :goto_2
    if-eqz v6, :cond_8

    .line 691
    iget-object v6, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v5, :cond_7

    move v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 693
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    .line 705
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroidx/appcompat/widget/ac;->v:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/appcompat/widget/ac;->u:Z

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 707
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ac;->m:I

    iget v3, p0, Landroidx/appcompat/widget/ac;->n:I

    if-gez v4, :cond_3

    move v4, v5

    :cond_3
    if-gez v6, :cond_c

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_0

    .line 679
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v7, :cond_5

    .line 680
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 682
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    move v4, v0

    goto :goto_1

    :cond_6
    move v2, v5

    .line 689
    goto :goto_2

    :cond_7
    move v0, v1

    .line 691
    goto :goto_3

    .line 695
    :cond_8
    iget-object v6, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v5, :cond_9

    move v0, v5

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    goto :goto_4

    :cond_9
    move v0, v1

    .line 695
    goto :goto_6

    .line 699
    :cond_a
    iget v0, p0, Landroidx/appcompat/widget/ac;->k:I

    if-ne v0, v7, :cond_b

    move v6, v2

    .line 700
    goto :goto_4

    .line 702
    :cond_b
    iget v0, p0, Landroidx/appcompat/widget/ac;->k:I

    move v6, v0

    goto :goto_4

    :cond_c
    move v5, v6

    .line 707
    goto :goto_5

    .line 712
    :cond_d
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v5, :cond_13

    move v0, v5

    .line 723
    :goto_7
    iget v4, p0, Landroidx/appcompat/widget/ac;->k:I

    if-ne v4, v5, :cond_15

    move v2, v5

    .line 733
    :cond_e
    :goto_8
    iget-object v4, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 735
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ac;->c(Z)V

    .line 739
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroidx/appcompat/widget/ac;->v:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Landroidx/appcompat/widget/ac;->u:Z

    if-nez v2, :cond_16

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 740
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->D:Landroidx/appcompat/widget/ac$d;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->s:Z

    if-eqz v0, :cond_f

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/ac;->r:Z

    invoke-static {v0, v1}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Z)V

    .line 744
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_17

    .line 745
    sget-object v0, Landroidx/appcompat/widget/ac;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_10

    .line 747
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/ac;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/appcompat/widget/ac;->I:Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_10
    :goto_a
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ac;->m:I

    iget v3, p0, Landroidx/appcompat/widget/ac;->n:I

    iget v4, p0, Landroidx/appcompat/widget/ac;->t:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/z;->setSelection(I)V

    .line 759
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->J:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 760
    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->m()V

    .line 762
    :cond_12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->J:Z

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->F:Landroidx/appcompat/widget/ac$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 715
    :cond_13
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    if-ne v0, v7, :cond_14

    .line 716
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto/16 :goto_7

    .line 718
    :cond_14
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    goto/16 :goto_7

    .line 726
    :cond_15
    iget v4, p0, Landroidx/appcompat/widget/ac;->k:I

    if-eq v4, v7, :cond_e

    .line 729
    iget v2, p0, Landroidx/appcompat/widget/ac;->k:I

    goto/16 :goto_8

    :cond_16
    move v3, v1

    .line 739
    goto :goto_9

    .line 748
    :catch_0
    move-exception v0

    .line 749
    const-string/jumbo v1, "ListPopupWindow"

    const-string/jumbo v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 753
    :cond_17
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->I:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto :goto_a
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 487
    iput p1, p0, Landroidx/appcompat/widget/ac;->m:I

    .line 488
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->z:Landroid/view/View;

    .line 472
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ac;->s:Z

    .line 1340
    iput-boolean p1, p0, Landroidx/appcompat/widget/ac;->r:Z

    .line 1341
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->p:Z

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ac;->n:I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 774
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->h()V

    .line 775
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 776
    iput-object v1, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 777
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->e:Landroidx/appcompat/widget/ac$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Landroidx/appcompat/widget/ac;->x:I

    .line 314
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 443
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroidx/appcompat/widget/ac;->m:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 539
    iput p1, p0, Landroidx/appcompat/widget/ac;->t:I

    .line 540
    return-void
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 556
    iput p1, p0, Landroidx/appcompat/widget/ac;->l:I

    .line 557
    return-void
.end method

.method public h(I)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 569
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/ac;->l:I

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ac;->g(I)V

    goto :goto_0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 813
    return-void
.end method

.method public j(I)V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 832
    invoke-virtual {p0}, Landroidx/appcompat/widget/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 833
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setListSelectionHidden(Z)V

    .line 834
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/z;->setSelection(I)V

    .line 836
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/z;->setItemChecked(IZ)V

    .line 840
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->J:Z

    return v0
.end method

.method public k()Landroid/view/View;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->z:Landroid/view/View;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroidx/appcompat/widget/ac;->l:I

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 848
    if-eqz v0, :cond_0

    .line 850
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setListSelectionHidden(Z)V

    .line 852
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->requestLayout()V

    .line 854
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
