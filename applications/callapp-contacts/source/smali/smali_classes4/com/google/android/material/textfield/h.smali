.class final Lcom/google/android/material/textfield/h;
.super Lcom/google/android/material/textfield/e;
.source "SourceFile"


# instance fields
.field final a:Landroid/text/TextWatcher;

.field private final b:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$c;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 36
    new-instance p1, Lcom/google/android/material/textfield/h$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/h$1;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->a:Landroid/text/TextWatcher;

    .line 46
    new-instance p1, Lcom/google/android/material/textfield/h$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/h$2;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 59
    new-instance p1, Lcom/google/android/material/textfield/h$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/h$3;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/h;)Z
    .locals 0

    .line 4123
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4537
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 4125
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->d:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$e;->design_password_eye:I

    .line 87
    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->password_toggle_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/h$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/h$4;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$c;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2537
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3130
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 3131
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 3132
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    .line 3133
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    return-void
.end method
