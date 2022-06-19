.class public final Lcom/google/android/material/datepicker/k;
.super Lcom/google/android/material/datepicker/p;
.source "MaterialTextInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/p",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d",
            "<TS;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/datepicker/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/material/datepicker/p;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/d",
            "<TT;>;",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/material/datepicker/k;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/k;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string/jumbo v2, "DATE_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    const-string/jumbo v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/k;->g(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->a:Lcom/google/android/material/datepicker/d;

    iget-object v4, p0, Lcom/google/android/material/datepicker/k;->b:Lcom/google/android/material/datepicker/a;

    new-instance v5, Lcom/google/android/material/datepicker/k$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/k$1;-><init>(Lcom/google/android/material/datepicker/k;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/datepicker/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/o;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/p;->a(Landroid/os/Bundle;)V

    .line 62
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->m()Landroid/os/Bundle;

    move-result-object p1

    .line 63
    :cond_0
    const-string/jumbo v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->a:Lcom/google/android/material/datepicker/d;

    .line 64
    const-string/jumbo v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->b:Lcom/google/android/material/datepicker/a;

    .line 65
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/p;->e(Landroid/os/Bundle;)V

    .line 55
    const-string/jumbo v0, "DATE_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->a:Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string/jumbo v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->b:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    return-void
.end method
