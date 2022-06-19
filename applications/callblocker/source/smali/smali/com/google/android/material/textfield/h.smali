.class Lcom/google/android/material/textfield/h;
.super Lcom/google/android/material/textfield/e;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private final d:Landroid/text/TextWatcher;

.field private final e:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$c;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 35
    new-instance v0, Lcom/google/android/material/textfield/h$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/h$1;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/h;->d:Landroid/text/TextWatcher;

    .line 51
    new-instance v0, Lcom/google/android/material/textfield/h$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/h$2;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/h;->e:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 63
    new-instance v0, Lcom/google/android/material/textfield/h$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/h$3;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$c;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/h;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/material/textfield/h;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->d:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$e;->design_password_eye:I

    .line 83
    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->password_toggle_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/h$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/h$4;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->e:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$c;)V

    .line 109
    return-void
.end method
