.class final Lcom/hbb20/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/app/Dialog;

.field static b:Landroid/content/Context;

.field private static final c:Ljava/lang/reflect/Field;

.field private static final d:Ljava/lang/reflect/Field;

.field private static final e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 49
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 52
    const-class v3, Landroid/widget/TextView;

    move-object v4, v1

    goto :goto_0

    .line 54
    :cond_0
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 55
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_0
    :try_start_3
    const-string v5, "mCursorDrawable"

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-object v3, v4

    :catch_2
    move-object v4, v1

    goto :goto_2

    :catch_3
    move-object v3, v1

    goto :goto_1

    :catch_4
    move-object v2, v1

    move-object v3, v2

    :goto_1
    move-object v4, v3

    :goto_2
    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v0, :cond_1

    .line 64
    sput-object v1, Lcom/hbb20/e;->c:Ljava/lang/reflect/Field;

    .line 65
    sput-object v1, Lcom/hbb20/e;->d:Ljava/lang/reflect/Field;

    .line 66
    sput-object v1, Lcom/hbb20/e;->e:Ljava/lang/reflect/Field;

    return-void

    .line 68
    :cond_1
    sput-object v4, Lcom/hbb20/e;->c:Ljava/lang/reflect/Field;

    .line 69
    sput-object v3, Lcom/hbb20/e;->d:Ljava/lang/reflect/Field;

    .line 70
    sput-object v2, Lcom/hbb20/e;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    .line 299
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 302
    sput-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    .line 303
    sput-object v0, Lcom/hbb20/e;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 28270
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 28271
    check-cast p0, Landroid/app/Activity;

    const-string v0, "input_method"

    .line 28272
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 28274
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28277
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28279
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static a(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hbb20/e;->b:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/hbb20/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->c()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->b()V

    .line 84
    sget-object v0, Lcom/hbb20/e;->b:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v12

    .line 85
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 86
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/hbb20/h$g;->layout_picker_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 87
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/hbb20/e;->b:Landroid/content/Context;

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3106
    iget-boolean v0, v10, Lcom/hbb20/CountryCodePicker;->H:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 4098
    iget-boolean v0, v10, Lcom/hbb20/CountryCodePicker;->ak:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 98
    :goto_0
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/h$f;->recycler_countryDialog:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/h$f;->textView_title:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 100
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/h$f;->rl_query_holder:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 101
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/h$f;->img_clear_query:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 102
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/h$f;->editText_search:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 103
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/h$f;->textView_noresult:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 104
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/h$f;->cardViewRoot:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 105
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v4, Lcom/hbb20/h$f;->img_dismiss:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 4286
    :try_start_0
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 5278
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aa:I

    const/16 v8, -0x63

    if-eq v0, v8, :cond_1

    .line 5286
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 6278
    iget v8, v10, Lcom/hbb20/CountryCodePicker;->aa:I

    .line 112
    invoke-virtual {v7, v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 6286
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 7278
    iget v8, v10, Lcom/hbb20/CountryCodePicker;->aa:I

    .line 113
    invoke-virtual {v6, v0, v8}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7286
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 8278
    iget v8, v10, Lcom/hbb20/CountryCodePicker;->aa:I

    .line 114
    invoke-virtual {v2, v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 8286
    :cond_1
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 116
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9286
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 117
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10286
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 118
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11213
    :cond_2
    :goto_1
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aC:I

    if-eqz v0, :cond_3

    .line 12213
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aC:I

    .line 127
    invoke-virtual {v3, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 12226
    :cond_3
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aB:I

    if-eqz v0, :cond_4

    .line 13226
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aB:I

    .line 131
    invoke-virtual {v3, v0}, Landroidx/cardview/widget/CardView;->setBackgroundResource(I)V

    .line 13252
    :cond_4
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aG:F

    .line 134
    invoke-virtual {v3, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 14125
    iget-boolean v0, v10, Lcom/hbb20/CountryCodePicker;->J:Z

    const/16 v15, 0x8

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    .line 138
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    new-instance v0, Lcom/hbb20/e$1;

    invoke-direct {v0}, Lcom/hbb20/e$1;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14569
    :goto_2
    iget-boolean v0, v10, Lcom/hbb20/CountryCodePicker;->F:Z

    if-nez v0, :cond_6

    .line 151
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15260
    :cond_6
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aD:I

    if-eqz v0, :cond_7

    .line 16260
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aD:I

    .line 157
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 158
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v3, 0x64

    .line 162
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, v4, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 17239
    :cond_7
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aE:I

    if-eqz v0, :cond_a

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_a

    .line 18239
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aE:I

    .line 169
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 19239
    iget v0, v10, Lcom/hbb20/CountryCodePicker;->aE:I

    .line 19284
    sget-object v4, Lcom/hbb20/e;->d:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_a

    .line 19288
    :try_start_1
    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v13, Lcom/hbb20/e;->e:Ljava/lang/reflect/Field;

    .line 19289
    invoke-virtual {v13, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 19307
    :try_start_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v3, :cond_8

    .line 19308
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 19310
    :cond_8
    invoke-virtual {v15, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 19290
    :goto_3
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 19291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v0, v8, :cond_9

    move-object v0, v6

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/hbb20/e;->c:Ljava/lang/reflect/Field;

    .line 19292
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v8, 0x0

    :try_start_3
    aput-object v3, v1, v8

    const/4 v13, 0x1

    aput-object v3, v1, v13

    .line 19291
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_1
    const/4 v8, 0x0

    goto :goto_5

    :catch_2
    nop

    .line 19517
    :cond_a
    :goto_5
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;

    move-result-object v0

    .line 19518
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    if-eqz v1, :cond_b

    .line 19519
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    invoke-interface {v0}, Lcom/hbb20/CountryCodePicker$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19529
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/a;->b(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;

    move-result-object v0

    .line 19530
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    if-eqz v1, :cond_c

    .line 19531
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    invoke-interface {v0}, Lcom/hbb20/CountryCodePicker$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_c
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 19541
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/a;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;

    move-result-object v0

    .line 19542
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    if-eqz v1, :cond_d

    .line 19543
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    invoke-interface {v0}, Lcom/hbb20/CountryCodePicker$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_d
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20106
    iget-boolean v0, v10, Lcom/hbb20/CountryCodePicker;->H:Z

    if-nez v0, :cond_e

    .line 182
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 183
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 184
    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_e
    new-instance v0, Lcom/hbb20/d;

    sget-object v2, Lcom/hbb20/e;->b:Landroid/content/Context;

    sget-object v13, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    move-object v1, v0

    move-object v3, v12

    move-object/from16 v4, p0

    const/4 v15, 0x0

    move-object v8, v13

    invoke-direct/range {v1 .. v9}, Lcom/hbb20/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    .line 188
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v2, Lcom/hbb20/e;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 189
    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 192
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/h$f;->fastscroll:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 193
    invoke-virtual {v0, v14}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 20112
    iget-boolean v1, v10, Lcom/hbb20/CountryCodePicker;->E:Z

    if-eqz v1, :cond_11

    .line 20654
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->ae:I

    if-eqz v1, :cond_f

    .line 21654
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->ae:I

    .line 196
    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleColor(I)V

    .line 22641
    :cond_f
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->aA:I

    if-eqz v1, :cond_10

    .line 23641
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->aA:I

    .line 200
    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setHandleColor(I)V

    .line 24628
    :cond_10
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->aF:I

    if-eqz v1, :cond_12

    .line 25628
    :try_start_4
    iget v1, v10, Lcom/hbb20/CountryCodePicker;->aF:I

    .line 205
    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleTextAppearance(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_11
    const/16 v1, 0x8

    .line 212
    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setVisibility(I)V

    .line 215
    :cond_12
    :goto_6
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/hbb20/e$2;

    invoke-direct {v1, v10}, Lcom/hbb20/e$2;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/hbb20/e$3;

    invoke-direct {v1, v10}, Lcom/hbb20/e$3;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v11, :cond_17

    .line 238
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 239
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 240
    iget-object v1, v1, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v8, 0x1

    goto :goto_7

    :cond_14
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_17

    .line 251
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 252
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v8, v0, 0x1

    goto :goto_8

    :cond_15
    const/4 v8, 0x0

    .line 254
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_17

    .line 255
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/a;

    iget-object v0, v0, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/2addr v15, v8

    .line 256
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    goto :goto_9

    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 263
    :cond_17
    :goto_9
    sget-object v0, Lcom/hbb20/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
