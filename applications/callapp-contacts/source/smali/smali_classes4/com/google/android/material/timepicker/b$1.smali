.class final Lcom/google/android/material/timepicker/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$a;


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

    .line 208
    iput-object p1, p0, Lcom/google/android/material/timepicker/b$1;->a:Lcom/google/android/material/timepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$1;->a:Lcom/google/android/material/timepicker/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;I)I

    .line 212
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$1;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {v0}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/material/timepicker/b;->a(Lcom/google/android/material/timepicker/b;Lcom/google/android/material/button/MaterialButton;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$1;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {v0}, Lcom/google/android/material/timepicker/b;->b(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/timepicker/g;

    move-result-object v0

    .line 1263
    iget-object v2, v0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v3, v0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 1264
    iget-object v2, v0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v0, v0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method
