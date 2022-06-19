.class public Lm8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:I

.field public k:I

.field public l:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIILjava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lm8/d;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lm8/d;->a:Landroid/content/Context;

    .line 4
    iput p3, p0, Lm8/d;->c:I

    .line 5
    iput-object p4, p0, Lm8/d;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lm8/d;->e:Ljava/lang/String;

    .line 7
    iput p6, p0, Lm8/d;->f:I

    .line 8
    iput p7, p0, Lm8/d;->g:I

    .line 9
    iput p8, p0, Lm8/d;->h:I

    .line 10
    iput p9, p0, Lm8/d;->i:I

    .line 11
    iput p10, p0, Lm8/d;->j:I

    .line 12
    iput p11, p0, Lm8/d;->k:I

    .line 13
    iput-object p12, p0, Lm8/d;->l:Ljava/util/Date;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/l;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/m;->h:Lx8/b;

    invoke-virtual {v4, p0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v2, v0

    .line 5
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0902a1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0901d7

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090126

    .line 4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090372

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090370

    .line 6
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090371

    .line 7
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090247

    .line 8
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lm8/d;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "</b> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lm8/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v8, v10, :cond_1

    .line 12
    invoke-static {v7, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 14
    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v4, p0, Lm8/d;->a:Landroid/content/Context;

    iget v7, p0, Lm8/d;->g:I

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f030001

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 17
    aget-object v4, v4, v7

    .line 18
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v4, p0, Lm8/d;->a:Landroid/content/Context;

    iget-object v5, p0, Lm8/d;->l:Ljava/util/Date;

    invoke-static {v4, v5}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget v4, p0, Lm8/d;->h:I

    .line 22
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget v4, p0, Lm8/d;->i:I

    .line 24
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v4

    const v6, 0x7f0800e4

    const v7, 0x7f0800f2

    const/high16 v8, -0x1000000

    const/4 v10, -0x1

    if-eqz v4, :cond_6

    if-eqz v0, :cond_2

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    const/high16 v4, -0x1000000

    .line 30
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz v0, :cond_3

    const/4 v8, -0x1

    .line 31
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const v7, 0x7f0800f1

    .line 32
    :goto_3
    invoke-virtual {v2, v7, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const v6, 0x7f0800e3

    .line 33
    :goto_4
    invoke-virtual {v3, v6, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_b

    .line 34
    :cond_6
    iget v4, p0, Lm8/d;->k:I

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    const v7, 0x7f0800f1

    .line 35
    :goto_6
    invoke-virtual {v2, v7, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 36
    iget v4, p0, Lm8/d;->k:I

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_a

    const/4 v4, -0x1

    goto :goto_8

    :cond_a
    const/high16 v4, -0x1000000

    .line 37
    :goto_8
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 38
    iget v2, p0, Lm8/d;->k:I

    if-ne v2, v10, :cond_b

    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    const v6, 0x7f0800e3

    .line 39
    :goto_a
    invoke-virtual {v3, v6, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 40
    iget v2, p0, Lm8/d;->k:I

    if-ne v2, v10, :cond_d

    const/4 v9, 0x1

    :cond_d
    if-eqz v9, :cond_e

    const/4 v8, -0x1

    .line 41
    :cond_e
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 42
    :goto_b
    iget-object v2, p0, Lm8/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_f

    const v3, 0x7f06004c

    goto :goto_c

    :cond_f
    const v3, 0x7f06004b

    :goto_c
    invoke-static {v2, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v2

    if-eqz v0, :cond_10

    .line 43
    iget-object v0, p0, Lm8/d;->a:Landroid/content/Context;

    const v3, 0x7f060049

    goto :goto_d

    :cond_10
    iget-object v0, p0, Lm8/d;->a:Landroid/content/Context;

    const v3, 0x7f060048

    :goto_d
    invoke-static {v0, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    const v3, 0x7f0900c2

    .line 44
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 45
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_e

    :cond_11
    move v2, v0

    :goto_e
    invoke-virtual {p1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 46
    iget p1, p0, Lm8/d;->f:I

    if-eq p1, v10, :cond_13

    if-eq p1, v5, :cond_12

    const p1, 0x7f080118

    goto :goto_f

    :cond_12
    const p1, 0x7f080117

    goto :goto_f

    :cond_13
    const p1, 0x7f080116

    .line 47
    :goto_f
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final c()Ls6/h;
    .locals 4

    .line 1
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    .line 2
    iget-object v1, p0, Lm8/d;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 4
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "number"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lm8/d;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 7
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v1, p0, Lm8/d;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 10
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "category"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lm8/d;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 13
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "text"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v1, p0, Lm8/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 16
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "posnegrating"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lm8/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lm8/d;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 19
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "isincalllog"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ls6/h;

    invoke-direct {v1}, Ls6/h;-><init>()V

    .line 21
    iget-object v2, v1, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    .line 23
    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    return-object v1
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lm8/d;->h:I

    iget v1, p0, Lm8/d;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lm8/d;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    .line 4
    new-instance v2, Ls2/b;

    invoke-direct {v2, p0}, Ls2/b;-><init>(Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "delfeed.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lw7/p;

    invoke-virtual {v3, v4}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lz7/a;

    iget-object v4, p0, Lm8/d;->a:Landroid/content/Context;

    .line 7
    invoke-static {v4}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceid"

    invoke-interface {v3, v5, v4}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v3

    const-string v4, "data"

    .line 8
    invoke-interface {v3, v4, v0}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    const-string v3, "gzip"

    const-string v4, "1"

    .line 9
    invoke-interface {v0, v3, v4}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    const/16 v3, 0x2710

    .line 10
    invoke-interface {v0, v3}, Lz7/a;->e(I)Lz7/a;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lm8/d;->c()Ls6/h;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lz7/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz7/b;

    .line 12
    invoke-interface {v0}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    .line 13
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v2}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public g(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    .line 4
    new-instance v2, Lm8/b;

    invoke-direct {v2, p0, p0, p1}, Lm8/b;-><init>(Lm8/d;Lm8/d;Z)V

    .line 5
    iget-object v3, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "postfeed.php"

    goto :goto_0

    :cond_0
    const-string p1, "editfeed.php"

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v3, Lw7/p;

    invoke-virtual {v3, p1}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lz7/a;

    iget-object p1, p0, Lm8/d;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "deviceid"

    invoke-interface {v3, v4, p1}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p1

    const-string v3, "data"

    .line 8
    invoke-interface {p1, v3, v0}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p1

    const-string v0, "gzip"

    const-string v3, "1"

    .line 9
    invoke-interface {p1, v0, v3}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p1

    const/16 v0, 0x2710

    .line 10
    invoke-interface {p1, v0}, Lz7/a;->e(I)Lz7/a;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lm8/d;->c()Ls6/h;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lz7/a;->a([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz7/b;

    .line 12
    invoke-interface {p1}, Lz7/b;->d()Lc8/a;

    move-result-object p1

    .line 13
    check-cast p1, Lm7/g;

    invoke-virtual {p1, v2}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public h(Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ls6/k;

    invoke-direct {v2}, Ls6/k;-><init>()V

    .line 4
    iget v4, p0, Lm8/d;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {v2, v4}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v4

    .line 6
    iget-object v5, v2, Ls6/k;->a:Lt6/e;

    const-string v6, "feedbackid"

    invoke-virtual {v5, v6, v4}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 7
    iget v5, p0, Lm8/d;->k:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Lm8/d;->k:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v3

    .line 9
    iget-object v4, v2, Ls6/k;->a:Lt6/e;

    const-string v5, "vote"

    invoke-virtual {v4, v5, v3}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Lm8/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lm8/d;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v3

    .line 12
    iget-object v4, v2, Ls6/k;->a:Lt6/e;

    const-string v5, "isincalllog"

    invoke-virtual {v4, v5, v3}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v3, Ls6/h;

    invoke-direct {v3}, Ls6/h;-><init>()V

    .line 14
    iget-object v4, v3, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Ls6/i;->toString()Ljava/lang/String;

    .line 17
    new-instance v2, Lm8/c;

    invoke-direct {v2, p0, p1}, Lm8/c;-><init>(Lm8/d;Z)V

    .line 18
    iget-object p1, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "postvote.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p1, Lw7/p;

    invoke-virtual {p1, v4}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, p0, Lm8/d;->a:Landroid/content/Context;

    .line 20
    invoke-static {v4}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceid"

    invoke-interface {p1, v5, v4}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v4, "data"

    .line 21
    invoke-interface {p1, v4, v0}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const/16 v0, 0x1388

    .line 22
    invoke-interface {p1, v0}, Lz7/a;->e(I)Lz7/a;

    const-string v0, "gzip"

    const-string v4, "1"

    .line 23
    invoke-interface {p1, v0, v4}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 24
    invoke-virtual {v3}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lz7/a;->a([B)Ljava/lang/Object;

    check-cast p1, Lz7/b;

    .line 25
    invoke-interface {p1}, Lz7/b;->d()Lc8/a;

    move-result-object p1

    .line 26
    check-cast p1, Lm7/g;

    invoke-virtual {p1, v2}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public final i(IZZ)V
    .locals 3

    .line 1
    new-instance v0, Le2/g$a;

    iget-object v1, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lm8/d;->a:Landroid/content/Context;

    const v2, 0x7f1101fa

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 4
    invoke-virtual {v0, v1}, Le2/g$a;->l(I)Le2/g$a;

    const v1, 0x7f0800cc

    .line 5
    invoke-virtual {v0, v1}, Le2/g$a;->e(I)Le2/g$a;

    .line 6
    iget-object v1, p0, Lm8/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06005e

    goto :goto_0

    :cond_0
    const v1, 0x7f060033

    :goto_0
    invoke-virtual {v0, v1}, Le2/g$a;->c(I)Le2/g$a;

    iget-object v1, p0, Lm8/d;->a:Landroid/content/Context;

    const v2, 0x7f1101fc

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Le2/g$a;->y:Z

    .line 9
    iput-boolean v1, v0, Le2/g$a;->z:Z

    const v1, 0x7f110205

    .line 10
    invoke-virtual {v0, v1}, Le2/g$a;->i(I)Le2/g$a;

    const v1, 0x7f11006e

    .line 11
    invoke-virtual {v0, v1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v0

    new-instance v1, Lm8/a;

    invoke-direct {v1, p0, p1, p3, p2}, Lm8/a;-><init>(Lm8/d;IZZ)V

    .line 12
    iput-object v1, v0, Le2/g$a;->u:Le2/g$c;

    .line 13
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    return-void
.end method

.method public final j(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm8/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 2
    iget p1, p0, Lm8/d;->k:I

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput v0, p0, Lm8/d;->k:I

    .line 4
    iget p1, p0, Lm8/d;->h:I

    sub-int/2addr p1, v2

    iput p1, p0, Lm8/d;->h:I

    goto :goto_0

    .line 5
    :cond_2
    iput v2, p0, Lm8/d;->k:I

    .line 6
    iget p1, p0, Lm8/d;->h:I

    add-int/2addr p1, v2

    iput p1, p0, Lm8/d;->h:I

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lm8/d;->h:I

    add-int/2addr p1, v2

    iput p1, p0, Lm8/d;->h:I

    .line 8
    iget p1, p0, Lm8/d;->i:I

    sub-int/2addr p1, v2

    iput p1, p0, Lm8/d;->i:I

    .line 9
    iput v2, p0, Lm8/d;->k:I

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p0, Lm8/d;->k:I

    if-eq p1, v1, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    iput v1, p0, Lm8/d;->k:I

    .line 12
    iget p1, p0, Lm8/d;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lm8/d;->i:I

    .line 13
    iget p1, p0, Lm8/d;->h:I

    sub-int/2addr p1, v2

    iput p1, p0, Lm8/d;->h:I

    goto :goto_0

    .line 14
    :cond_6
    iput v1, p0, Lm8/d;->k:I

    .line 15
    iget p1, p0, Lm8/d;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lm8/d;->i:I

    goto :goto_0

    .line 16
    :cond_7
    iget p1, p0, Lm8/d;->i:I

    sub-int/2addr p1, v2

    iput p1, p0, Lm8/d;->i:I

    .line 17
    iput v0, p0, Lm8/d;->k:I

    .line 18
    :goto_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {p1}, Lm8/i;->f()V

    return-void
.end method
