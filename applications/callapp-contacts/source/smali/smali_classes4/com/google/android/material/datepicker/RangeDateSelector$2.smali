.class final Lcom/google/android/material/datepicker/RangeDateSelector$2;
.super Lcom/google/android/material/datepicker/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/RangeDateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/k;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic b:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic c:Lcom/google/android/material/datepicker/k;

.field final synthetic d:Lcom/google/android/material/datepicker/RangeDateSelector;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/k;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->d:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->c:Lcom/google/android/material/datepicker/k;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/c;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->d:Lcom/google/android/material/datepicker/RangeDateSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->d:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->c:Lcom/google/android/material/datepicker/k;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/k;)V

    return-void
.end method

.method final a(Ljava/lang/Long;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->d:Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 226
    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->d:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->c:Lcom/google/android/material/datepicker/k;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/k;)V

    return-void
.end method
