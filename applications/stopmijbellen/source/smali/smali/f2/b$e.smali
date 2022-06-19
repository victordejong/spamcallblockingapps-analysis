.class public Lf2/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/b;->k(Le2/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2/b;


# direct methods
.method public constructor <init>(Lf2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/b$e;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p2, p0, Lf2/b$e;->a:Lf2/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 2
    iput p1, p2, Lf2/b;->s:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    const/high16 p2, -0x1000000

    .line 4
    iput p2, p1, Lf2/b;->s:I

    .line 5
    :goto_0
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 6
    iget-object p2, p1, Lf2/b;->h:Landroid/view/View;

    .line 7
    iget p1, p1, Lf2/b;->s:I

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 10
    iget-object p1, p1, Lf2/b;->j:Landroid/widget/SeekBar;

    .line 11
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 13
    iget p1, p1, Lf2/b;->s:I

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 15
    iget-object p3, p0, Lf2/b$e;->a:Lf2/b;

    .line 16
    iget-object p3, p3, Lf2/b;->j:Landroid/widget/SeekBar;

    .line 17
    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    iget-object p3, p0, Lf2/b$e;->a:Lf2/b;

    .line 19
    iget-object p3, p3, Lf2/b;->k:Landroid/widget/TextView;

    .line 20
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "%d"

    invoke-static {p4, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 22
    iget p1, p1, Lf2/b;->s:I

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 24
    iget-object p3, p0, Lf2/b$e;->a:Lf2/b;

    .line 25
    iget-object p3, p3, Lf2/b;->l:Landroid/widget/SeekBar;

    .line 26
    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 27
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 28
    iget p1, p1, Lf2/b;->s:I

    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    .line 30
    iget-object p3, p0, Lf2/b$e;->a:Lf2/b;

    .line 31
    iget-object p3, p3, Lf2/b;->n:Landroid/widget/SeekBar;

    .line 32
    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 33
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 34
    iget p1, p1, Lf2/b;->s:I

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 36
    iget-object p3, p0, Lf2/b$e;->a:Lf2/b;

    .line 37
    iget-object p3, p3, Lf2/b;->p:Landroid/widget/SeekBar;

    .line 38
    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 39
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "in_sub"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    const/4 p2, -0x1

    .line 42
    invoke-virtual {p1, p2}, Lf2/b;->m(I)V

    .line 43
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 44
    invoke-virtual {p1, p2}, Lf2/b;->j(I)V

    .line 45
    iget-object p1, p0, Lf2/b$e;->a:Lf2/b;

    .line 46
    invoke-virtual {p1}, Lf2/b;->g()V

    return-void
.end method
