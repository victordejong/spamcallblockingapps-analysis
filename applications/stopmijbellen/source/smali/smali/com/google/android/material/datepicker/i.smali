.class public Lcom/google/android/material/datepicker/i;
.super Lm0/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    invoke-direct {p0}, Lm0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Ln0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Ln0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/datepicker/g;->k:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    const v0, 0x7f110175

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    const v0, 0x7f110173

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Ln0/b;->n(Ljava/lang/CharSequence;)V

    return-void
.end method
