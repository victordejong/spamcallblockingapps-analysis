.class public Lf2/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lf2/b$f;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Lf2/b$f;->a:Lf2/b;

    sget v0, Lf2/b;->t:I

    .line 2
    invoke-virtual {p3}, Lf2/b;->c()Lf2/b$g;

    move-result-object p3

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p3, p0, Lf2/b$f;->a:Lf2/b;

    .line 5
    iget-object p3, p3, Lf2/b;->j:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    iget-object v0, p0, Lf2/b$f;->a:Lf2/b;

    .line 7
    iget-object v0, v0, Lf2/b;->l:Landroid/widget/SeekBar;

    .line 8
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lf2/b$f;->a:Lf2/b;

    .line 9
    iget-object v1, v1, Lf2/b;->n:Landroid/widget/SeekBar;

    .line 10
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lf2/b$f;->a:Lf2/b;

    .line 11
    iget-object v2, v2, Lf2/b;->p:Landroid/widget/SeekBar;

    .line 12
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 13
    invoke-static {p3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 14
    iget-object v0, p0, Lf2/b$f;->a:Lf2/b;

    .line 15
    iget-object v0, v0, Lf2/b;->g:Landroid/widget/EditText;

    new-array v1, p2, [Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p3, "%08X"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_0
    iget-object p3, p0, Lf2/b$f;->a:Lf2/b;

    .line 18
    iget-object v0, p3, Lf2/b;->k:Landroid/widget/TextView;

    new-array v1, p2, [Ljava/lang/Object;

    .line 19
    iget-object p3, p3, Lf2/b;->j:Landroid/widget/SeekBar;

    .line 20
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p3, "%d"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lf2/b$f;->a:Lf2/b;

    .line 22
    iget-object v1, v0, Lf2/b;->m:Landroid/widget/TextView;

    new-array v2, p2, [Ljava/lang/Object;

    .line 23
    iget-object v0, v0, Lf2/b;->l:Landroid/widget/SeekBar;

    .line 24
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lf2/b$f;->a:Lf2/b;

    .line 26
    iget-object v1, v0, Lf2/b;->o:Landroid/widget/TextView;

    new-array v2, p2, [Ljava/lang/Object;

    .line 27
    iget-object v0, v0, Lf2/b;->n:Landroid/widget/SeekBar;

    .line 28
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lf2/b$f;->a:Lf2/b;

    .line 30
    iget-object v1, v0, Lf2/b;->q:Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    .line 31
    iget-object v0, v0, Lf2/b;->p:Landroid/widget/SeekBar;

    .line 32
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p1

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
