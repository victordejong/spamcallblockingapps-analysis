.class final Lcom/google/android/material/timepicker/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/b;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/timepicker/b$4;->a:Lcom/google/android/material/timepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/google/android/material/timepicker/b$4;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {p1}, Lcom/google/android/material/timepicker/b;->e(Lcom/google/android/material/timepicker/b;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;I)I

    .line 258
    iget-object p1, p0, Lcom/google/android/material/timepicker/b$4;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {p1}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method
