.class Lcom/google/android/material/textfield/d$5;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->d(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AutoCompleteTextView;

.field final synthetic b:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/material/textfield/d$5;->b:Lcom/google/android/material/textfield/d;

    iput-object p2, p0, Lcom/google/android/material/textfield/d$5;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/google/android/material/textfield/d$5;->b:Lcom/google/android/material/textfield/d;

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->d(Lcom/google/android/material/textfield/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/material/textfield/d$5;->b:Lcom/google/android/material/textfield/d;

    invoke-static {v0, v2}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Z)Z

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/d$5;->b:Lcom/google/android/material/textfield/d;

    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 351
    :cond_1
    return v2
.end method
