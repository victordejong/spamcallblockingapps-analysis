.class public final Landroidx/constraintlayout/a/a/h;
.super Landroidx/constraintlayout/a/a/e;
.source "SourceFile"


# instance fields
.field protected a:F

.field public aI:I

.field private aJ:I

.field private aK:Z

.field protected b:I

.field protected c:I

.field public d:Landroidx/constraintlayout/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->a:F

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->b:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->c:I

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/a/a/h;->I:Landroidx/constraintlayout/a/a/d;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->aJ:I

    .line 47
    iget-object v1, p0, Landroidx/constraintlayout/a/a/h;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/a/a/h;->Q:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/a/a/h;->P:[Landroidx/constraintlayout/a/a/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;
    .locals 2

    .line 125
    sget-object v0, Landroidx/constraintlayout/a/a/h$1;->a:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 135
    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v0, :cond_0

    .line 136
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    return-object p1

    .line 128
    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    return-object p1

    .line 147
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 156
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->a:F

    const/4 p1, -0x1

    .line 157
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->b:I

    .line 158
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->c:I

    :cond_0
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/e;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/a/a/e;",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    .line 58
    check-cast p1, Landroidx/constraintlayout/a/a/h;

    .line 59
    iget p2, p1, Landroidx/constraintlayout/a/a/h;->a:F

    iput p2, p0, Landroidx/constraintlayout/a/a/h;->a:F

    .line 60
    iget p2, p1, Landroidx/constraintlayout/a/a/h;->b:I

    iput p2, p0, Landroidx/constraintlayout/a/a/h;->b:I

    .line 61
    iget p2, p1, Landroidx/constraintlayout/a/a/h;->c:I

    iput p2, p0, Landroidx/constraintlayout/a/a/h;->c:I

    .line 62
    iget p1, p1, Landroidx/constraintlayout/a/a/h;->aI:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/h;->o(I)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/d;Z)V
    .locals 7

    .line 1620
    iget-object p2, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 215
    check-cast p2, Landroidx/constraintlayout/a/a/f;

    if-nez p2, :cond_0

    return-void

    .line 219
    :cond_0
    sget-object v0, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v0

    .line 220
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    .line 221
    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->S:Landroidx/constraintlayout/a/a/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 222
    :goto_0
    iget v5, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v5, :cond_3

    .line 223
    sget-object v0, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v0

    .line 224
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    .line 225
    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->S:Landroidx/constraintlayout/a/a/e;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 227
    :cond_3
    iget-boolean p2, p0, Landroidx/constraintlayout/a/a/h;->aK:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    .line 2086
    iget-boolean p2, p2, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz p2, :cond_6

    .line 228
    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p2

    .line 232
    iget-object v6, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;I)V

    .line 233
    iget v6, p0, Landroidx/constraintlayout/a/a/h;->b:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_2

    .line 237
    :cond_4
    iget v6, p0, Landroidx/constraintlayout/a/a/h;->c:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    .line 239
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v1

    .line 240
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 241
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 244
    :cond_5
    :goto_2
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a/h;->aK:Z

    return-void

    .line 247
    :cond_6
    iget p2, p0, Landroidx/constraintlayout/a/a/h;->b:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_8

    .line 248
    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p2

    .line 249
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 250
    iget v3, p0, Landroidx/constraintlayout/a/a/h;->b:I

    invoke-virtual {p1, p2, v0, v3, v6}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-eqz v2, :cond_7

    .line 252
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_7
    return-void

    .line 254
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/a/a/h;->c:I

    if-eq p2, v3, :cond_a

    .line 255
    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p2

    .line 256
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v1

    .line 257
    iget v3, p0, Landroidx/constraintlayout/a/a/h;->c:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-eqz v2, :cond_9

    .line 259
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 260
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_9
    return-void

    .line 262
    :cond_a
    iget p2, p0, Landroidx/constraintlayout/a/a/h;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_b

    .line 263
    iget-object p2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p2

    .line 264
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 265
    iget v1, p0, Landroidx/constraintlayout/a/a/h;->a:F

    .line 266
    invoke-static {p1, p2, v0, v1}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    move-result-object p2

    .line 265
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    :cond_b
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Z)V
    .locals 3

    .line 2620
    iget-object p1, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    .line 277
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 278
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/h;->e(I)V

    .line 279
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/h;->f(I)V

    .line 3620
    iget-object p1, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 280
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/h;->h(I)V

    .line 281
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/h;->g(I)V

    return-void

    .line 283
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/h;->e(I)V

    .line 284
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/h;->f(I)V

    .line 4620
    iget-object p1, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 285
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/h;->g(I)V

    .line 286
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/h;->h(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/h;->aK:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/h;->aK:Z

    return v0
.end method

.method public final d()F
    .locals 1

    .line 179
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->a:F

    return v0
.end method

.method public final e()I
    .locals 1

    .line 183
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 187
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->c:I

    return v0
.end method

.method public final o(I)V
    .locals 3

    .line 84
    iget v0, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    .line 88
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget p1, p0, Landroidx/constraintlayout/a/a/h;->aI:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->H:Landroidx/constraintlayout/a/a/d;

    iput-object p1, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->I:Landroidx/constraintlayout/a/a/d;

    iput-object p1, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    .line 94
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->Q:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/a/a/h;->P:[Landroidx/constraintlayout/a/a/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 97
    iget-object v1, p0, Landroidx/constraintlayout/a/a/h;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final p(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 164
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->a:F

    .line 165
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->b:I

    const/4 p1, -0x1

    .line 166
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->c:I

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 172
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->a:F

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Landroidx/constraintlayout/a/a/h;->b:I

    .line 174
    iput p1, p0, Landroidx/constraintlayout/a/a/h;->c:I

    :cond_0
    return-void
.end method

.method public final r(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/d;->a(I)V

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Landroidx/constraintlayout/a/a/h;->aK:Z

    return-void
.end method
