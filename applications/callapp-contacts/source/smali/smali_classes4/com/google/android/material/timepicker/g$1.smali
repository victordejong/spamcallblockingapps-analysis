.class final Lcom/google/android/material/timepicker/g$1;
.super Lcom/google/android/material/internal/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/g;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/material/timepicker/g$1;->a:Lcom/google/android/material/timepicker/g;

    invoke-direct {p0}, Lcom/google/android/material/internal/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 63
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/google/android/material/timepicker/g$1;->a:Lcom/google/android/material/timepicker/g;

    .line 1054
    iget-object p1, p1, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/google/android/material/timepicker/g$1;->a:Lcom/google/android/material/timepicker/g;

    .line 2054
    iget-object v0, v0, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
