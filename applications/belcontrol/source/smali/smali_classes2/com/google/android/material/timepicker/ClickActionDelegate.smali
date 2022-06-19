.class public Lcom/google/android/material/timepicker/ClickActionDelegate;
.super Lqa;
.source ""


# instance fields
.field private final clickAction:Lub$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lqa;-><init>()V

    new-instance v0, Lub$a;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {v0, p2, p1}, Lub$a;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClickActionDelegate;->clickAction:Lub$a;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lub;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lqa;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lub;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClickActionDelegate;->clickAction:Lub$a;

    invoke-virtual {p2, p1}, Lub;->b(Lub$a;)V

    return-void
.end method
