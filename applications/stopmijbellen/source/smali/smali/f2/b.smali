.class public Lf2/b;
.super Landroidx/fragment/app/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2/b$i;,
        Lf2/b$g;,
        Lf2/b$h;
    }
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public a:[I

.field public b:[[I

.field public c:I

.field public d:Lf2/b$h;

.field public e:Landroid/widget/GridView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/view/View;

.field public i:Landroid/text/TextWatcher;

.field public j:Landroid/widget/SeekBar;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/SeekBar;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/SeekBar;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/SeekBar;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/b;->b:[[I

    if-eqz v0, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4
    aget v1, p1, v0

    if-ne v1, p2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lf2/b;->j(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()Lf2/b$g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lf2/b$g;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lf2/b;->s:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Lf2/b;->i()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lf2/b;->b:[[I

    invoke-virtual {p0}, Lf2/b;->l()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lf2/b;->i()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf2/b;->l()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 7
    iget-object v0, p0, Lf2/b;->a:[I

    invoke-virtual {p0}, Lf2/b;->l()I

    move-result v1

    aget v0, v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x1010435

    invoke-static {v0, v1}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v1

    const v2, 0x7f0400ef

    invoke-static {v1, v2, v0}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    :cond_3
    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lf2/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, Lf2/b$g;->a:I

    :goto_0
    if-nez v1, :cond_1

    .line 5
    iget v1, v0, Lf2/b$g;->a:I

    :cond_1
    return v1
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/b;->e:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf2/b;->e:Landroid/widget/GridView;

    new-instance v1, Lf2/b$i;

    invoke-direct {v1, p0}, Lf2/b$i;-><init>(Lf2/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object v0, p0, Lf2/b;->e:Landroid/widget/GridView;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080148

    const/4 v3, 0x0

    sget-object v4, Le0/f;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lf2/b;->e:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lf2/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Le2/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v1

    .line 3
    iget-boolean v1, v1, Lf2/b$g;->h:Z

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p0}, Lf2/b;->d()I

    move-result v1

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/16 v3, 0xf7

    if-le v2, v3, :cond_2

    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-le v2, v3, :cond_2

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_1
    const-string v1, "#DEDEDE"

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v2

    iget-boolean v2, v2, Lf2/b$g;->h:Z

    if-eqz v2, :cond_3

    .line 11
    sget-object v2, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    sget-object v2, Le2/b;->c:Le2/b;

    invoke-virtual {v0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    sget-object v2, Le2/b;->b:Le2/b;

    invoke-virtual {v0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :cond_3
    iget-object v0, p0, Lf2/b;->l:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lf2/b;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lf2/b;->j:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lg2/b;->e(Landroid/widget/SeekBar;I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lf2/b;->l:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lg2/b;->e(Landroid/widget/SeekBar;I)V

    .line 18
    iget-object v0, p0, Lf2/b;->n:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lg2/b;->e(Landroid/widget/SeekBar;I)V

    .line 19
    iget-object v0, p0, Lf2/b;->p:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lg2/b;->e(Landroid/widget/SeekBar;I)V

    :cond_5
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_sub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/b;->b:[[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sub_index"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/b;->b:[[I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sub_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final k(Le2/g;)V
    .locals 4

    .line 1
    sget-object v0, Le2/b;->b:Le2/b;

    sget-object v1, Le2/b;->c:Le2/b;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/l;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Le2/g;

    .line 3
    :cond_0
    iget-object v2, p0, Lf2/b;->e:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v2

    iget v2, v2, Lf2/b$g;->e:I

    invoke-virtual {p1, v2}, Le2/g;->setTitle(I)V

    .line 5
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v2

    iget v2, v2, Lf2/b$g;->f:I

    invoke-virtual {p1, v0, v2}, Le2/g;->h(Le2/b;I)V

    .line 6
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    iget v0, v0, Lf2/b$g;->d:I

    invoke-virtual {p1, v1, v0}, Le2/g;->h(Le2/b;I)V

    .line 7
    iget-object p1, p0, Lf2/b;->e:Landroid/widget/GridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lf2/b;->f:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    new-instance p1, Lf2/b$e;

    invoke-direct {p1, p0}, Lf2/b$e;-><init>(Lf2/b;)V

    iput-object p1, p0, Lf2/b;->i:Landroid/text/TextWatcher;

    .line 10
    iget-object v0, p0, Lf2/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    new-instance p1, Lf2/b$f;

    invoke-direct {p1, p0}, Lf2/b$f;-><init>(Lf2/b;)V

    iput-object p1, p0, Lf2/b;->r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 12
    iget-object v0, p0, Lf2/b;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 13
    iget-object p1, p0, Lf2/b;->n:Landroid/widget/SeekBar;

    iget-object v0, p0, Lf2/b;->r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 14
    iget-object p1, p0, Lf2/b;->p:Landroid/widget/SeekBar;

    iget-object v0, p0, Lf2/b;->r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 15
    iget-object p1, p0, Lf2/b;->j:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lf2/b;->j:Landroid/widget/SeekBar;

    iget-object v1, p0, Lf2/b;->r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 17
    iget-object p1, p0, Lf2/b;->g:Landroid/widget/EditText;

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lf2/b;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%08X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p0, Lf2/b;->g:Landroid/widget/EditText;

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    iget v2, p0, Lf2/b;->s:I

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v2

    iget v2, v2, Lf2/b$g;->a:I

    invoke-virtual {p1, v2}, Le2/g;->setTitle(I)V

    .line 20
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v2

    iget v2, v2, Lf2/b$g;->e:I

    invoke-virtual {p1, v0, v2}, Le2/g;->h(Le2/b;I)V

    .line 21
    invoke-virtual {p0}, Lf2/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    iget v0, v0, Lf2/b$g;->c:I

    invoke-virtual {p1, v1, v0}, Le2/g;->h(Le2/b;I)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    iget v0, v0, Lf2/b$g;->d:I

    invoke-virtual {p1, v1, v0}, Le2/g;->h(Le2/b;I)V

    .line 24
    :goto_0
    iget-object p1, p0, Lf2/b;->e:Landroid/widget/GridView;

    invoke-virtual {p1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lf2/b;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lf2/b;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lf2/b;->i:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lf2/b;->i:Landroid/text/TextWatcher;

    .line 28
    iget-object v0, p0, Lf2/b;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 29
    iget-object v0, p0, Lf2/b;->n:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    iget-object v0, p0, Lf2/b;->p:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 31
    iput-object p1, p0, Lf2/b;->r:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_1
    return-void
.end method

.method public final l()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "top_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final m(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lf2/b;->a:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lf2/b;->a(II)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "top_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object p1

    instance-of p1, p1, Lf2/b$h;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf2/b$h;

    iput-object p1, p0, Lf2/b;->d:Lf2/b$h;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lf2/b$h;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lf2/b$h;

    iput-object p1, p0, Lf2/b;->d:Lf2/b$h;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ColorChooserDialog needs to be shown from an Activity/Fragment implementing ColorCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Le2/g;

    .line 5
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lf2/b;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lf2/b;->j(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lf2/b;->m(I)V

    .line 9
    iget-object v2, p0, Lf2/b;->b:[[I

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 10
    sget-object p1, Le2/b;->c:Le2/b;

    iget v2, v1, Lf2/b$g;->c:I

    invoke-virtual {v0, p1, v2}, Le2/g;->h(Le2/b;I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "in_sub"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lf2/b;->d()I

    move-result p1

    iput p1, p0, Lf2/b;->s:I

    .line 14
    invoke-virtual {p0}, Lf2/b;->g()V

    .line 15
    invoke-virtual {p0}, Lf2/b;->f()V

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, v0, Lf2/b$g;->g:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lf2/c;->c:[I

    iput-object v0, p0, Lf2/b;->a:[I

    .line 6
    sget-object v0, Lf2/c;->d:[[I

    iput-object v0, p0, Lf2/b;->b:[[I

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lf2/c;->a:[I

    iput-object v0, p0, Lf2/b;->a:[I

    .line 8
    sget-object v0, Lf2/c;->b:[[I

    iput-object v0, p0, Lf2/b;->b:[[I

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, "in_custom"

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 10
    invoke-virtual {p0}, Lf2/b;->d()I

    move-result v2

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, -0x1000000

    const/4 p1, 0x1

    .line 12
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070195

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lf2/b;->c:I

    .line 13
    invoke-virtual {p0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v3

    .line 14
    new-instance v4, Le2/g$a;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v5

    invoke-direct {v4, v5}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lf2/b;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Le2/g$a;->k(I)Le2/g$a;

    .line 17
    iput-boolean v0, v4, Le2/g$a;->B:Z

    const v5, 0x7f0c0085

    .line 18
    invoke-virtual {v4, v5, v0}, Le2/g$a;->d(IZ)Le2/g$a;

    iget v5, v3, Lf2/b$g;->d:I

    .line 19
    invoke-virtual {v4, v5}, Le2/g$a;->g(I)Le2/g$a;

    iget v5, v3, Lf2/b$g;->b:I

    .line 20
    invoke-virtual {v4, v5}, Le2/g$a;->i(I)Le2/g$a;

    iget v3, v3, Lf2/b$g;->e:I

    .line 21
    invoke-virtual {v4, v3}, Le2/g$a;->h(I)Le2/g$a;

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v4, v3, v3}, Le2/g$a;->m(Ljava/lang/String;Ljava/lang/String;)Le2/g$a;

    new-instance v3, Lf2/b$d;

    invoke-direct {v3, p0}, Lf2/b$d;-><init>(Lf2/b;)V

    .line 23
    iput-object v3, v4, Le2/g$a;->u:Le2/g$c;

    .line 24
    new-instance v3, Lf2/b$c;

    invoke-direct {v3, p0}, Lf2/b$c;-><init>(Lf2/b;)V

    .line 25
    iput-object v3, v4, Le2/g$a;->v:Le2/g$c;

    .line 26
    new-instance v3, Lf2/b$b;

    invoke-direct {v3, p0}, Lf2/b$b;-><init>(Lf2/b;)V

    .line 27
    iput-object v3, v4, Le2/g$a;->w:Le2/g$c;

    .line 28
    new-instance v3, Lf2/b$a;

    invoke-direct {v3, p0}, Lf2/b$a;-><init>(Lf2/b;)V

    .line 29
    iput-object v3, v4, Le2/g$a;->H:Landroid/content/DialogInterface$OnShowListener;

    .line 30
    new-instance v3, Le2/g;

    invoke-direct {v3, v4}, Le2/g;-><init>(Le2/g$a;)V

    .line 31
    iget-object v4, v3, Le2/g;->c:Le2/g$a;

    iget-object v4, v4, Le2/g$a;->o:Landroid/view/View;

    const v5, 0x7f090217

    .line 32
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lf2/b;->e:Landroid/widget/GridView;

    .line 33
    iput v2, p0, Lf2/b;->s:I

    const v2, 0x7f090209

    .line 34
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lf2/b;->f:Landroid/view/View;

    const v2, 0x7f090218

    .line 35
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lf2/b;->g:Landroid/widget/EditText;

    const v2, 0x7f09020d

    .line 36
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lf2/b;->h:Landroid/view/View;

    const v2, 0x7f090203

    .line 37
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lf2/b;->j:Landroid/widget/SeekBar;

    const v2, 0x7f090205

    .line 38
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lf2/b;->k:Landroid/widget/TextView;

    const v2, 0x7f09020e

    .line 39
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lf2/b;->l:Landroid/widget/SeekBar;

    const v2, 0x7f090210

    .line 40
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lf2/b;->m:Landroid/widget/TextView;

    const v2, 0x7f09020a

    .line 41
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lf2/b;->n:Landroid/widget/SeekBar;

    const v2, 0x7f09020c

    .line 42
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lf2/b;->o:Landroid/widget/TextView;

    const v2, 0x7f090206

    .line 43
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lf2/b;->p:Landroid/widget/SeekBar;

    const v2, 0x7f090208

    .line 44
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lf2/b;->q:Landroid/widget/TextView;

    .line 45
    iget-object v2, p0, Lf2/b;->g:Landroid/widget/EditText;

    const-string v4, "FF2196F3"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, p0, Lf2/b;->g:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    if-nez p1, :cond_2

    .line 47
    invoke-virtual {p0, v3}, Lf2/b;->k(Le2/g;)V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lf2/b;->f()V

    return-object v3

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ColorChooserDialog should be created using its Builder interface."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lf2/b;->d:Lf2/b$h;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lf2/b$h;->f(Lf2/b;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    check-cast p1, Lf2/a;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 7
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    .line 11
    aget v9, v4, v2

    div-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v9

    .line 12
    aget v9, v4, v1

    div-int/2addr v7, v3

    add-int/2addr v7, v9

    .line 13
    sget-object v3, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {p1}, Lm0/v$e;->d(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v7, p1, v7

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr v0, v3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "#%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 17
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v10, v0, :cond_1

    const v0, 0x800035

    .line 18
    aget v1, v4, v2

    add-int/2addr v1, v8

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v7, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    .line 19
    invoke-virtual {p1, v0, v1, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lf2/b;->l()I

    move-result v0

    const-string v1, "top_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lf2/b;->h()Z

    move-result v0

    const-string v1, "in_sub"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lf2/b;->i()I

    move-result v0

    const-string v1, "sub_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lf2/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "in_custom"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
