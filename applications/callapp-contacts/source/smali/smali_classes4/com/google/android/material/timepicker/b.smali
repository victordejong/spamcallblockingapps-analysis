.class public final Lcom/google/android/material/timepicker/b;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/material/timepicker/TimePickerView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/ViewStub;

.field private j:Lcom/google/android/material/timepicker/d;

.field private k:Lcom/google/android/material/timepicker/g;

.field private l:Lcom/google/android/material/timepicker/e;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/material/button/MaterialButton;

.field private r:I

.field private s:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Ljava/util/Set;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/material/timepicker/b;->o:I

    .line 94
    iput v0, p0, Lcom/google/android/material/timepicker/b;->r:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/b;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/google/android/material/timepicker/b;->r:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->q:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method private a(I)Lcom/google/android/material/timepicker/e;
    .locals 2

    if-nez p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/timepicker/d;

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->g:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->s:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/timepicker/d;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/d;

    return-object p1

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->k:Lcom/google/android/material/timepicker/g;

    if-nez p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->i:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/timepicker/b;->h:Landroid/widget/LinearLayout;

    .line 311
    new-instance v0, Lcom/google/android/material/timepicker/g;

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->s:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/timepicker/g;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->k:Lcom/google/android/material/timepicker/g;

    .line 314
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->k:Lcom/google/android/material/timepicker/g;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/g;->d()V

    .line 316
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->k:Lcom/google/android/material/timepicker/g;

    return-object p1
.end method

.method private a(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->l:Lcom/google/android/material/timepicker/e;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Lcom/google/android/material/timepicker/e;->c()V

    .line 290
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/b;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/b;->a(I)Lcom/google/android/material/timepicker/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->l:Lcom/google/android/material/timepicker/e;

    .line 291
    invoke-interface {v0}, Lcom/google/android/material/timepicker/e;->b()V

    .line 292
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->l:Lcom/google/android/material/timepicker/e;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/e;->a()V

    .line 293
    iget v0, p0, Lcom/google/android/material/timepicker/b;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/b;->b(I)Landroid/util/Pair;

    move-result-object v0

    .line 294
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/b;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method private b(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 322
    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/b;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->material_timepicker_clock_mode_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "no icon for mode: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/b;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->material_timepicker_text_input_mode_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/timepicker/g;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->k:Lcom/google/android/material/timepicker/g;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/timepicker/b;)Ljava/util/Set;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/timepicker/b;)Ljava/util/Set;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/timepicker/b;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/google/android/material/timepicker/b;->r:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/a$b;->materialTimePickerTheme:I

    invoke-static {p1, v0}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    .line 133
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/util/TypedValue;->data:I

    :goto_0
    invoke-direct {v0, v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 135
    sget v1, Lcom/google/android/material/a$b;->colorSurface:I

    const-class v3, Lcom/google/android/material/timepicker/b;

    .line 137
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {p1, v1, v3}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 139
    new-instance v3, Lcom/google/android/material/k/h;

    sget v4, Lcom/google/android/material/a$b;->materialTimePickerStyle:I

    sget v5, Lcom/google/android/material/a$k;->Widget_MaterialComponents_TimePicker:I

    const/4 v6, 0x0

    invoke-direct {v3, p1, v6, v4, v5}, Lcom/google/android/material/k/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 146
    sget-object v4, Lcom/google/android/material/a$l;->MaterialTimePicker:[I

    sget v5, Lcom/google/android/material/a$b;->materialTimePickerStyle:I

    sget v7, Lcom/google/android/material/a$k;->Widget_MaterialComponents_TimePicker:I

    .line 147
    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 153
    sget v5, Lcom/google/android/material/a$l;->MaterialTimePicker_clockIcon:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/b;->n:I

    .line 154
    sget v5, Lcom/google/android/material/a$l;->MaterialTimePicker_keyboardIcon:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/timepicker/b;->m:I

    .line 156
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {v3, p1}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 159
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v1, -0x2

    .line 164
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 268
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "TIME_PICKER_TIME_MODEL"

    .line 1189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->s:Lcom/google/android/material/timepicker/TimeModel;

    if-nez v0, :cond_1

    .line 1191
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->s:Lcom/google/android/material/timepicker/TimeModel;

    :cond_1
    const-string v0, "TIME_PICKER_INPUT_MODE"

    const/4 v1, 0x0

    .line 1193
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/b;->r:I

    const-string v0, "TIME_PICKER_TITLE_RES"

    .line 1194
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/b;->o:I

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    .line 1195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/timepicker/b;->p:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 204
    sget p3, Lcom/google/android/material/a$h;->material_timepicker_dialog:I

    .line 205
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 206
    sget p2, Lcom/google/android/material/a$f;->material_timepicker_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->g:Lcom/google/android/material/timepicker/TimePickerView;

    .line 207
    new-instance p3, Lcom/google/android/material/timepicker/b$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$1;-><init>(Lcom/google/android/material/timepicker/b;)V

    .line 1229
    iput-object p3, p2, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/timepicker/TimePickerView$a;

    .line 216
    sget p2, Lcom/google/android/material/a$f;->material_textinput_timepicker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->i:Landroid/view/ViewStub;

    .line 217
    sget p2, Lcom/google/android/material/a$f;->material_timepicker_mode_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->q:Lcom/google/android/material/button/MaterialButton;

    .line 218
    sget p2, Lcom/google/android/material/a$f;->header_title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 220
    iget-object p3, p0, Lcom/google/android/material/timepicker/b;->p:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 221
    iget-object p3, p0, Lcom/google/android/material/timepicker/b;->p:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    iget p3, p0, Lcom/google/android/material/timepicker/b;->o:I

    if-eqz p3, :cond_1

    .line 225
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/timepicker/b;->q:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/button/MaterialButton;)V

    .line 229
    sget p2, Lcom/google/android/material/a$f;->material_timepicker_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 230
    new-instance p3, Lcom/google/android/material/timepicker/b$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$2;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget p2, Lcom/google/android/material/a$f;->material_timepicker_cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 242
    new-instance p3, Lcom/google/android/material/timepicker/b$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$3;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p2, p0, Lcom/google/android/material/timepicker/b;->q:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/google/android/material/timepicker/b$4;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$4;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 276
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->s:Lcom/google/android/material/timepicker/TimeModel;

    const-string v1, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    iget v0, p0, Lcom/google/android/material/timepicker/b;->r:I

    const-string v1, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    iget v0, p0, Lcom/google/android/material/timepicker/b;->o:I

    const-string v1, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->p:Ljava/lang/String;

    const-string v1, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
