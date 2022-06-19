.class final Lcom/google/android/material/textfield/d$4;
.super Lcom/google/android/material/textfield/TextInputLayout$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 2

    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 115
    iget-object p1, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 115
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 4774
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 4775
    iget-object p1, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v1

    goto :goto_0

    .line 5082
    :cond_1
    invoke-virtual {p2}, Landroidx/core/view/a/c;->e()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 5084
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->f(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 129
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    .line 134
    invoke-static {p2}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    iget-object p2, p2, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6537
    iget-object p2, p2, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 135
    invoke-static {p2}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->b:Lcom/google/android/material/textfield/d;

    invoke-static {p2, p1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
