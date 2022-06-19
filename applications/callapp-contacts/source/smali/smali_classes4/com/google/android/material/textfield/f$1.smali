.class final Lcom/google/android/material/textfield/f$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/f;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:I

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/google/android/material/textfield/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    iput p2, p0, Lcom/google/android/material/textfield/f$1;->a:I

    iput-object p3, p0, Lcom/google/android/material/textfield/f$1;->b:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/f$1;->c:I

    iput-object p5, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 237
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    iget v0, p0, Lcom/google/android/material/textfield/f$1;->a:I

    .line 1062
    iput v0, p1, Lcom/google/android/material/textfield/f;->d:I

    .line 238
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    const/4 v0, 0x0

    .line 2062
    iput-object v0, p1, Lcom/google/android/material/textfield/f;->c:Landroid/animation/Animator;

    .line 239
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    .line 240
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget p1, p0, Lcom/google/android/material/textfield/f$1;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    .line 3062
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    .line 4062
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    .line 242
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 248
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
