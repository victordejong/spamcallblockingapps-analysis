.class final Lcom/google/android/material/button/MaterialButtonToggleGroup$2;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 3

    .line 258
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 263
    invoke-static {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I

    move-result v0

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 266
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-static {v1, v2, v0, v2, p1}, Landroidx/core/view/a/c$c;->a(IIIIZ)Landroidx/core/view/a/c$c;

    move-result-object p1

    .line 259
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method
