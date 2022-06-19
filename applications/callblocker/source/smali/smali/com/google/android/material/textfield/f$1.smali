.class Lcom/google/android/material/textfield/f$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


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

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    iput p2, p0, Lcom/google/android/material/textfield/f$1;->a:I

    iput-object p3, p0, Lcom/google/android/material/textfield/f$1;->b:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/f$1;->c:I

    iput-object p5, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    iget v1, p0, Lcom/google/android/material/textfield/f$1;->a:I

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/f;->a(Lcom/google/android/material/textfield/f;I)I

    .line 230
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    invoke-static {v0, v2}, Lcom/google/android/material/textfield/f;->a(Lcom/google/android/material/textfield/f;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget v0, p0, Lcom/google/android/material/textfield/f$1;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    invoke-static {v0}, Lcom/google/android/material/textfield/f;->a(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->e:Lcom/google/android/material/textfield/f;

    invoke-static {v0}, Lcom/google/android/material/textfield/f;->a(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 239
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 242
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/material/textfield/f$1;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_0
    return-void
.end method
