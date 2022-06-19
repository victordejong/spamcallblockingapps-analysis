.class Landroidx/recyclerview/widget/j;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/j$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/j$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    .line 27
    return-void
.end method

.method private a(Ljava/util/List;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 40
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/a$b;

    .line 41
    iget v0, v5, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/j;->a(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/j;->c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/j;->b(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 215
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 216
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 217
    if-eqz v1, :cond_2

    move v0, v2

    .line 224
    :goto_1
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x1

    .line 214
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v1, v2, :cond_0

    .line 158
    const/4 v0, -0x1

    .line 160
    :cond_0
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v1, v2, :cond_1

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_1
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v1, v2, :cond_2

    .line 164
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 166
    :cond_2
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v1, v2, :cond_3

    .line 167
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 169
    :cond_3
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/2addr v0, v1

    iput v0, p5, Landroidx/recyclerview/widget/a$b;->b:I

    .line 170
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/j;->b(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/j;->a(Ljava/util/List;II)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    .line 61
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v0, v3, :cond_2

    .line 63
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v0, v3, :cond_11

    iget v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, p3, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_11

    move v0, v1

    move v3, v2

    .line 76
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v1, v5, :cond_3

    .line 77
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    .line 92
    :cond_0
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v1, v2, :cond_4

    .line 93
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    move-object v1, v4

    .line 102
    :goto_1
    if-eqz v3, :cond_5

    .line 103
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    invoke-interface {v0, p3}, Landroidx/recyclerview/widget/j$a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 151
    :cond_1
    :goto_2
    return-void

    .line 69
    :cond_2
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v3, v3, 0x1

    if-ne v0, v3, :cond_10

    iget v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, p3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_10

    move v0, v2

    move v3, v2

    .line 71
    goto :goto_0

    .line 78
    :cond_3
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v6, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    .line 80
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    .line 81
    iput v7, p3, Landroidx/recyclerview/widget/a$b;->a:I

    .line 82
    iput v2, p3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 83
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    if-nez v0, :cond_1

    .line 84
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    invoke-interface {v0, p5}, Landroidx/recyclerview/widget/j$a;->a(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_2

    .line 94
    :cond_4
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v5

    if-ge v1, v2, :cond_f

    .line 95
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v2

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v1, v2

    .line 97
    iget-object v2, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    iget v5, p3, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2, v7, v5, v1, v4}, Landroidx/recyclerview/widget/j$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v1

    .line 98
    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v2, v4

    iput v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_1

    .line 110
    :cond_5
    if-eqz v0, :cond_a

    .line 111
    if-eqz v1, :cond_7

    .line 112
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v2, :cond_6

    .line 113
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 115
    :cond_6
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v2, :cond_7

    .line 116
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 119
    :cond_7
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v2, :cond_8

    .line 120
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 122
    :cond_8
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v2, :cond_9

    .line 123
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 142
    :cond_9
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v0, v2, :cond_e

    .line 144
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_4
    if-eqz v1, :cond_1

    .line 149
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 126
    :cond_a
    if-eqz v1, :cond_c

    .line 127
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v2, :cond_b

    .line 128
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 130
    :cond_b
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v2, :cond_c

    .line 131
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    .line 134
    :cond_c
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v2, :cond_d

    .line 135
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 137
    :cond_d
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v2, :cond_9

    .line 138
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_3

    .line 146
    :cond_e
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    move-object v1, v4

    goto/16 :goto_1

    :cond_10
    move v0, v2

    move v3, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    move v3, v1

    goto/16 :goto_0
.end method

.method b(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 176
    .line 179
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v0, v2, :cond_3

    .line 180
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroidx/recyclerview/widget/a$b;->b:I

    move-object v0, v1

    .line 187
    :goto_0
    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v2, v3, :cond_4

    .line 188
    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    .line 197
    :cond_0
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    if-lez v2, :cond_5

    .line 199
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_2
    if-eqz v0, :cond_1

    .line 205
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    :cond_1
    if-eqz v1, :cond_2

    .line 208
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    :cond_2
    return-void

    .line 181
    :cond_3
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_6

    .line 183
    iget v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroidx/recyclerview/widget/a$b;->d:I

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    const/4 v3, 0x1

    iget-object v4, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v5, v2, v3, v4}, Landroidx/recyclerview/widget/j$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 190
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v2

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int v2, v1, v2

    .line 192
    iget-object v1, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    iget v3, p3, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v1, v5, v3, v2, v4}, Landroidx/recyclerview/widget/j$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v1

    .line 195
    iget v3, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int v2, v3, v2

    iput v2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_1

    .line 201
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/j$a;

    invoke-interface {v2, p5}, Landroidx/recyclerview/widget/j$a;->a(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
