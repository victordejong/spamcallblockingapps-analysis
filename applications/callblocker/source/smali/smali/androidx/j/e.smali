.class public Landroidx/j/e;
.super Landroidx/fragment/app/r;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    return-void
.end method

.method private static a(Landroidx/j/m;)Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Landroidx/j/m;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/j/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroidx/j/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/j/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/j/m;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/j/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroidx/j/q;

    invoke-direct {v0}, Landroidx/j/q;-><init>()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    check-cast p1, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 138
    :cond_0
    if-eqz p2, :cond_1

    .line 139
    check-cast p2, Landroidx/j/m;

    invoke-virtual {v0, p2}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 141
    :cond_1
    if-eqz p3, :cond_2

    .line 142
    check-cast p3, Landroidx/j/m;

    invoke-virtual {v0, p3}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 144
    :cond_2
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p2, Landroidx/j/m;

    invoke-static {p1, p2}, Landroidx/j/o;->a(Landroid/view/ViewGroup;Landroidx/j/m;)V

    .line 214
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    check-cast p1, Landroidx/j/m;

    .line 301
    new-instance v0, Landroidx/j/e$4;

    invoke-direct {v0, p0, p2}, Landroidx/j/e$4;-><init>(Landroidx/j/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/m$b;)V

    .line 311
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    check-cast p1, Landroidx/j/m;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {p0, p2, v0}, Landroidx/j/e;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 91
    new-instance v1, Landroidx/j/e$1;

    invoke-direct {v1, p0, v0}, Landroidx/j/e$1;-><init>(Landroidx/j/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroidx/j/m;->a(Landroidx/j/m$b;)V

    .line 98
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    check-cast p1, Landroidx/j/q;

    .line 72
    invoke-virtual {p1}, Landroidx/j/q;->g()Ljava/util/List;

    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 74
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 76
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    invoke-static {v2, v0}, Landroidx/j/e;->a(Ljava/util/List;Landroid/view/View;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0, p1, p3}, Landroidx/j/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    check-cast p1, Landroidx/j/m;

    .line 222
    new-instance v0, Landroidx/j/e$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/j/e$3;-><init>(Landroidx/j/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    .line 241
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    check-cast p1, Landroidx/j/m;

    .line 103
    if-nez p1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 106
    :cond_1
    instance-of v1, p1, Landroidx/j/q;

    if-eqz v1, :cond_2

    .line 107
    check-cast p1, Landroidx/j/q;

    .line 108
    invoke-virtual {p1}, Landroidx/j/q;->r()I

    move-result v1

    .line 109
    :goto_0
    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/j/q;->b(I)Landroidx/j/m;

    move-result-object v2

    .line 111
    invoke-virtual {p0, v2, p2}, Landroidx/j/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {p1}, Landroidx/j/e;->a(Landroidx/j/m;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroidx/j/m;->g()Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroidx/j/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 118
    :goto_1
    if-ge v1, v2, :cond_0

    .line 119
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/j/m;->b(Landroid/view/View;)Landroidx/j/m;

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    check-cast p1, Landroidx/j/q;

    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroidx/j/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    invoke-virtual {p1}, Landroidx/j/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Landroidx/j/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 252
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    instance-of v0, p1, Landroidx/j/m;

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    check-cast p1, Landroidx/j/m;

    invoke-virtual {p1}, Landroidx/j/m;->p()Landroidx/j/m;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    check-cast p1, Landroidx/j/m;

    .line 187
    check-cast p2, Landroidx/j/m;

    .line 188
    check-cast p3, Landroidx/j/m;

    .line 189
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 190
    new-instance v0, Landroidx/j/q;

    invoke-direct {v0}, Landroidx/j/q;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p2}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    move-result-object v0

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroidx/j/q;->a(I)Landroidx/j/q;

    move-result-object v1

    .line 199
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    .line 200
    new-instance v0, Landroidx/j/q;

    invoke-direct {v0}, Landroidx/j/q;-><init>()V

    .line 201
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0, v1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 204
    :cond_1
    invoke-virtual {v0, p3}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 207
    :goto_1
    return-object v0

    .line 194
    :cond_2
    if-eqz p1, :cond_3

    move-object v1, p1

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 197
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 207
    goto :goto_1
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 284
    check-cast p1, Landroidx/j/m;

    .line 285
    invoke-virtual {p1, p2}, Landroidx/j/m;->b(Landroid/view/View;)Landroidx/j/m;

    .line 287
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    check-cast p1, Landroidx/j/m;

    .line 151
    new-instance v0, Landroidx/j/e$2;

    invoke-direct {v0, p0, p2, p3}, Landroidx/j/e$2;-><init>(Landroidx/j/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    .line 178
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 257
    check-cast p1, Landroidx/j/m;

    .line 258
    instance-of v1, p1, Landroidx/j/q;

    if-eqz v1, :cond_0

    .line 259
    check-cast p1, Landroidx/j/q;

    .line 260
    invoke-virtual {p1}, Landroidx/j/q;->r()I

    move-result v1

    .line 261
    :goto_0
    if-ge v0, v1, :cond_3

    .line 262
    invoke-virtual {p1, v0}, Landroidx/j/q;->b(I)Landroidx/j/m;

    move-result-object v2

    .line 263
    invoke-virtual {p0, v2, p2, p3}, Landroidx/j/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p1}, Landroidx/j/e;->a(Landroidx/j/m;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    invoke-virtual {p1}, Landroidx/j/m;->g()Ljava/util/List;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 268
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    if-nez p3, :cond_1

    move v1, v0

    :goto_1
    move v2, v0

    .line 271
    :goto_2
    if-ge v2, v1, :cond_2

    .line 272
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/j/m;->b(Landroid/view/View;)Landroidx/j/m;

    .line 271
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 270
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    .line 275
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/j/m;->c(Landroid/view/View;)Landroidx/j/m;

    .line 274
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 279
    :cond_3
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Landroidx/j/q;

    invoke-direct {v0}, Landroidx/j/q;-><init>()V

    .line 64
    check-cast p1, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    check-cast p1, Landroidx/j/m;

    .line 293
    invoke-virtual {p1, p2}, Landroidx/j/m;->c(Landroid/view/View;)Landroidx/j/m;

    .line 295
    :cond_0
    return-void
.end method
