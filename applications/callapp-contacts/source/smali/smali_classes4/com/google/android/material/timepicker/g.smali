.class final Lcom/google/android/material/timepicker/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$c;
.implements Lcom/google/android/material/timepicker/e;


# instance fields
.field final a:Lcom/google/android/material/timepicker/TimeModel;

.field final b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field final c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final d:Landroid/widget/LinearLayout;

.field private final e:Landroid/text/TextWatcher;

.field private final f:Landroid/text/TextWatcher;

.field private final g:Lcom/google/android/material/timepicker/f;

.field private final h:Landroid/widget/EditText;

.field private final i:Landroid/widget/EditText;

.field private j:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 6

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/material/timepicker/g$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/g$1;-><init>(Lcom/google/android/material/timepicker/g;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/g;->e:Landroid/text/TextWatcher;

    .line 75
    new-instance v0, Lcom/google/android/material/timepicker/g$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/g$2;-><init>(Lcom/google/android/material/timepicker/g;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/g;->f:Landroid/text/TextWatcher;

    .line 99
    iput-object p1, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    .line 100
    iput-object p2, p0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    .line 101
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    sget v1, Lcom/google/android/material/a$f;->material_minute_text_input:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 103
    sget v2, Lcom/google/android/material/a$f;->material_hour_text_input:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v2, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 104
    sget v3, Lcom/google/android/material/a$f;->material_label:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    sget v4, Lcom/google/android/material/a$f;->material_label:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    sget v5, Lcom/google/android/material/a$j;->material_timepicker_minute:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v3, Lcom/google/android/material/a$j;->material_timepicker_hour:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v0, Lcom/google/android/material/a$f;->selection_type:I

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 110
    sget v0, Lcom/google/android/material/a$f;->selection_type:I

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 112
    iget v0, p2, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-nez v0, :cond_0

    .line 2176
    sget v0, Lcom/google/android/material/a$f;->material_clock_period_toggle:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/g;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2178
    new-instance v3, Lcom/google/android/material/timepicker/g$4;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/g$4;-><init>(Lcom/google/android/material/timepicker/g;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)V

    .line 2187
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 2188
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->g()V

    .line 116
    :cond_0
    new-instance v0, Lcom/google/android/material/timepicker/g$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/g$3;-><init>(Lcom/google/android/material/timepicker/g;)V

    .line 124
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getHourInputValidator()Lcom/google/android/material/timepicker/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Landroid/text/InputFilter;)V

    .line 127
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getMinuteInputValidator()Lcom/google/android/material/timepicker/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Landroid/text/InputFilter;)V

    .line 3152
    iget-object v0, v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3537
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 129
    iput-object v0, p0, Lcom/google/android/material/timepicker/g;->h:Landroid/widget/EditText;

    .line 4152
    iget-object v3, v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4537
    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 130
    iput-object v3, p0, Lcom/google/android/material/timepicker/g;->i:Landroid/widget/EditText;

    .line 131
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 133
    sget v4, Lcom/google/android/material/a$b;->colorPrimary:I

    .line 5053
    invoke-static {p1, v4}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v4

    .line 134
    invoke-static {v0, v4}, Lcom/google/android/material/timepicker/g;->a(Landroid/widget/EditText;I)V

    .line 135
    invoke-static {v3, v4}, Lcom/google/android/material/timepicker/g;->a(Landroid/widget/EditText;I)V

    .line 138
    :cond_1
    new-instance v0, Lcom/google/android/material/timepicker/f;

    invoke-direct {v0, v2, v1, p2}, Lcom/google/android/material/timepicker/f;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/g;->g:Lcom/google/android/material/timepicker/f;

    .line 139
    new-instance v3, Lcom/google/android/material/timepicker/a;

    .line 140
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/a$j;->material_hour_selection:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    .line 139
    invoke-virtual {v2, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Landroidx/core/view/a;)V

    .line 141
    new-instance v2, Lcom/google/android/material/timepicker/a;

    .line 142
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/google/android/material/a$j;->material_minute_selection:I

    invoke-direct {v2, p1, v3}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Landroidx/core/view/a;)V

    .line 5149
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->e()V

    .line 5150
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/g;->a(Lcom/google/android/material/timepicker/TimeModel;)V

    .line 6060
    iget-object p1, v0, Lcom/google/android/material/timepicker/f;->a:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 6152
    iget-object p1, p1, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6061
    iget-object p2, v0, Lcom/google/android/material/timepicker/f;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 7152
    iget-object p2, p2, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 8537
    iget-object p2, p2, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const v1, 0x10000005

    .line 6065
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const v1, 0x10000006

    .line 6066
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6068
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6069
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6070
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private static a(Landroid/widget/EditText;I)V
    .locals 5

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 247
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mCursorDrawable"

    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 252
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    aput-object v0, p1, v2

    .line 256
    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 5

    .line 165
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->f()V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 167
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%02d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->e()V

    .line 172
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-nez v1, :cond_1

    sget v1, Lcom/google/android/material/a$f;->material_clock_period_am_button:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/material/a$f;->material_clock_period_pm_button:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/g;->a(Lcom/google/android/material/timepicker/TimeModel;)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 205
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 207
    invoke-direct {p0}, Lcom/google/android/material/timepicker/g;->g()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 224
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method
