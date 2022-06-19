.class final Lcom/google/android/material/chip/Chip$1;
.super Lcom/google/android/material/h/f;
.source "SourceFile"


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

    .line 173
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Lcom/google/android/material/h/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;

    move-result-object p2

    .line 3457
    iget-boolean p2, p2, Lcom/google/android/material/chip/a;->r:Z

    if-eqz p2, :cond_0

    .line 177
    iget-object p2, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-static {p2}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;

    move-result-object p2

    .line 3608
    iget-object p2, p2, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 179
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->a:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->invalidate()V

    return-void
.end method
