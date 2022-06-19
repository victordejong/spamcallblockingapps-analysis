.class Lcom/google/android/material/datepicker/h$7;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->a(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/n;

.field final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field final synthetic c:Lcom/google/android/material/datepicker/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$7;->c:Lcom/google/android/material/datepicker/h;

    iput-object p2, p0, Lcom/google/android/material/datepicker/h$7;->a:Lcom/google/android/material/datepicker/n;

    iput-object p3, p0, Lcom/google/android/material/datepicker/h$7;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$7;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 410
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 396
    if-gez p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$7;->c:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->at()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$7;->c:Lcom/google/android/material/datepicker/h;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h$7;->a:Lcom/google/android/material/datepicker/n;

    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/n;->f(I)Lcom/google/android/material/datepicker/l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/l;

    .line 402
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$7;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h$7;->a:Lcom/google/android/material/datepicker/n;

    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/n;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$7;->c:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->at()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()I

    move-result v0

    goto :goto_0
.end method
