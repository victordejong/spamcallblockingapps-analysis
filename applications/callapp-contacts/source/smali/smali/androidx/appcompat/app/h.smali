.class public Landroidx/appcompat/app/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/h$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:[I

.field private static final c:[Ljava/lang/String;

.field private static final d:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 75
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Landroidx/appcompat/app/h;->a:[Ljava/lang/Class;

    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    .line 77
    sput-object v0, Landroidx/appcompat/app/h;->b:[I

    const-string v0, "android.widget."

    const-string v1, "android.view."

    const-string v2, "android.webkit."

    .line 79
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->c:[Ljava/lang/String;

    .line 87
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    sput-object v0, Landroidx/appcompat/app/h;->d:Landroidx/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    const-string v0, "view"

    .line 277
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p2, "class"

    .line 278
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 282
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 283
    aput-object p3, v3, v0

    const/4 p3, -0x1

    const/16 v3, 0x2e

    .line 285
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 p3, 0x0

    .line 286
    :goto_0
    sget-object v3, Landroidx/appcompat/app/h;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge p3, v4, :cond_2

    .line 287
    aget-object v3, v3, p3

    invoke-direct {p0, p1, p2, v3}, Landroidx/appcompat/app/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 302
    iget-object p1, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 303
    aput-object v1, p1, v0

    return-object v3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 302
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 303
    aput-object v1, p1, v0

    return-object v1

    .line 294
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    iget-object p2, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 303
    aput-object v1, p2, v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 302
    iget-object p2, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 303
    aput-object v1, p2, v0

    .line 304
    throw p1

    .line 302
    :catch_0
    iget-object p1, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 303
    aput-object v1, p1, v0

    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 333
    sget-object v0, Landroidx/appcompat/app/h;->d:Landroidx/b/g;

    invoke-virtual {v0, p2}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 339
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 338
    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    .line 341
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 343
    sget-object p3, Landroidx/appcompat/app/h;->a:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 344
    invoke-virtual {v0, p2, v1}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    .line 346
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 347
    iget-object p1, p0, Landroidx/appcompat/app/h;->e:[Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " asked to inflate view for <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">, but returned null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;
    .locals 1

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    .line 1360
    :goto_0
    sget-object p5, Landroidx/appcompat/a$j;->View:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, p5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p5

    if-eqz p6, :cond_1

    .line 1364
    sget p6, Landroidx/appcompat/a$j;->View_android_theme:I

    invoke-virtual {p5, p6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    :goto_1
    if-nez p6, :cond_2

    .line 1368
    sget p6, Landroidx/appcompat/a$j;->View_theme:I

    invoke-virtual {p5, p6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    .line 1375
    :cond_2
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p6, :cond_4

    .line 1377
    instance-of p5, p1, Landroidx/appcompat/view/d;

    if-eqz p5, :cond_3

    move-object p5, p1

    check-cast p5, Landroidx/appcompat/view/d;

    .line 2142
    iget p5, p5, Landroidx/appcompat/view/d;->a:I

    if-eq p5, p6, :cond_4

    .line 1381
    :cond_3
    new-instance p5, Landroidx/appcompat/view/d;

    invoke-direct {p5, p1, p6}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    move-object p1, p5

    :cond_4
    if-eqz p7, :cond_5

    .line 107
    invoke-static {p1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 113
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p6

    sparse-switch p6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p6, "Button"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 p5, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string p6, "EditText"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 p5, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string p6, "CheckBox"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 p5, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string p6, "AutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 p5, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string p6, "ImageView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 p5, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string p6, "ToggleButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string p6, "RadioButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_c

    goto :goto_2

    :cond_c
    const/4 p5, 0x7

    goto :goto_2

    :sswitch_7
    const-string p6, "Spinner"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_d

    goto :goto_2

    :cond_d
    const/4 p5, 0x6

    goto :goto_2

    :sswitch_8
    const-string p6, "SeekBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_e

    goto :goto_2

    :cond_e
    const/4 p5, 0x5

    goto :goto_2

    :sswitch_9
    const-string p6, "ImageButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_f

    goto :goto_2

    :cond_f
    const/4 p5, 0x4

    goto :goto_2

    :sswitch_a
    const-string p6, "TextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_10

    goto :goto_2

    :cond_10
    const/4 p5, 0x3

    goto :goto_2

    :sswitch_b
    const-string p6, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_11

    goto :goto_2

    :cond_11
    const/4 p5, 0x2

    goto :goto_2

    :sswitch_c
    const-string p6, "CheckedTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_12

    goto :goto_2

    :cond_12
    const/4 p5, 0x1

    goto :goto_2

    :sswitch_d
    const-string p6, "RatingBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_13

    goto :goto_2

    :cond_13
    const/4 p5, 0x0

    :goto_2
    packed-switch p5, :pswitch_data_0

    const/4 p5, 0x0

    goto/16 :goto_3

    .line 123
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/h;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p5

    .line 124
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2209
    :pswitch_1
    new-instance p5, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 139
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/h;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p5

    .line 140
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 151
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/h;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object p5

    .line 152
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2199
    :pswitch_4
    new-instance p5, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2261
    :pswitch_5
    new-instance p5, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/h;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object p5

    .line 144
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2214
    :pswitch_7
    new-instance p5, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2256
    :pswitch_8
    new-instance p5, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2219
    :pswitch_9
    new-instance p5, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :pswitch_a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p5

    .line 116
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2246
    :pswitch_b
    new-instance p5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2234
    :pswitch_c
    new-instance p5, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 2251
    :pswitch_d
    new-instance p5, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {p5, p1, p4}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_3
    if-nez p5, :cond_14

    if-eq p3, p1, :cond_14

    .line 181
    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/app/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    :cond_14
    if-eqz p5, :cond_17

    .line 2313
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2315
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_17

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xf

    if-lt p2, p3, :cond_15

    .line 2316
    invoke-static {p5}, Landroidx/core/view/v;->F(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_4

    .line 2323
    :cond_15
    sget-object p2, Landroidx/appcompat/app/h;->b:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2324
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 2326
    new-instance p3, Landroidx/appcompat/app/h$a;

    invoke-direct {p3, p5, p2}, Landroidx/appcompat/app/h$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2328
    :cond_16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_17
    :goto_4
    return-object p5

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 194
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    .line 204
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 224
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1

    .line 229
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 1

    .line 240
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
