.class public Lcom/google/android/material/datepicker/n;
.super Lm0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 1
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

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Ln0/b;->l(Ljava/lang/Object;)V

    return-void
.end method
