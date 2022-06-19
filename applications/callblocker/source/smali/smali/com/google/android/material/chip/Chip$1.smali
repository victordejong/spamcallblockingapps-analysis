.class Lcom/google/android/material/chip/Chip$1;
.super Lcom/google/android/material/n/f;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Lcom/google/android/material/n/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 175
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
