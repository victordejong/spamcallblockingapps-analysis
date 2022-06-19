.class public final Landroidx/constraintlayout/a/a/a;
.super Landroidx/constraintlayout/a/a/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/j;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/a/a/a;->a:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/a/a/a;->c:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/j;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/a/a/a;->a:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/a/a/a;->c:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    .line 2730
    iput-object p1, p0, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/j;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    .line 73
    check-cast p1, Landroidx/constraintlayout/a/a/a;

    .line 74
    iget p2, p1, Landroidx/constraintlayout/a/a/a;->a:I

    iput p2, p0, Landroidx/constraintlayout/a/a/a;->a:I

    .line 75
    iget-boolean p2, p1, Landroidx/constraintlayout/a/a/a;->b:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    .line 76
    iget p1, p1, Landroidx/constraintlayout/a/a/a;->c:I

    iput p1, p0, Landroidx/constraintlayout/a/a/a;->c:I

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/d;Z)V
    .locals 13

    .line 119
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 120
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 121
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->J:Landroidx/constraintlayout/a/a/d;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 122
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->K:Landroidx/constraintlayout/a/a/d;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    .line 123
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, p2

    iget-object v5, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v5, v5, p2

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-ltz p2, :cond_20

    const/4 v0, 0x4

    if-ge p2, v0, :cond_20

    .line 127
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->P:[Landroidx/constraintlayout/a/a/d;

    iget v5, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object p2, p2, v5

    .line 133
    iget-boolean v5, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    if-nez v5, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/a;->f()Z

    .line 136
    :cond_1
    iget-boolean v5, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    if-eqz v5, :cond_6

    .line 137
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    .line 138
    iget p2, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz p2, :cond_5

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_4

    .line 142
    :cond_3
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v0, p0, Landroidx/constraintlayout/a/a/a;->Y:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;I)V

    .line 143
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->K:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v0, p0, Landroidx/constraintlayout/a/a/a;->Y:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;I)V

    :cond_4
    return-void

    .line 139
    :cond_5
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v0, p0, Landroidx/constraintlayout/a/a/a;->X:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;I)V

    .line 140
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->J:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v0, p0, Landroidx/constraintlayout/a/a/a;->X:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;I)V

    return-void

    :cond_6
    const/4 v5, 0x0

    .line 152
    :goto_2
    iget v6, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v6, :cond_c

    .line 153
    iget-object v6, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v5

    .line 154
    iget-boolean v7, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 157
    :cond_7
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    .line 4966
    :cond_8
    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v7, v1

    .line 158
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v7, v8, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v7, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v7, :cond_9

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 162
    :cond_9
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    .line 4975
    :cond_a
    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v7, v3

    .line 163
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v7, v8, :cond_b

    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v7, :cond_b

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    .line 170
    :goto_4
    iget-object v6, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->b()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->b()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v6, 0x1

    .line 171
    :goto_6
    iget-object v7, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/d;->b()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Landroidx/constraintlayout/a/a/a;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/d;->b()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v7, 0x1

    :goto_8
    if-nez v5, :cond_15

    .line 172
    iget v5, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-nez v5, :cond_11

    if-nez v6, :cond_14

    :cond_11
    if-ne v5, v2, :cond_12

    if-nez v7, :cond_14

    :cond_12
    if-ne v5, v3, :cond_13

    if-nez v6, :cond_14

    :cond_13
    if-ne v5, v4, :cond_15

    if-eqz v7, :cond_15

    :cond_14
    const/4 v5, 0x1

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x5

    if-nez v5, :cond_16

    const/4 v6, 0x4

    :cond_16
    const/4 v5, 0x0

    .line 181
    :goto_a
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v7, :cond_1c

    .line 182
    iget-object v7, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v5

    .line 183
    iget-boolean v8, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    if-nez v8, :cond_17

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/e;->a()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 186
    :cond_17
    iget-object v8, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    iget v9, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v8

    .line 187
    iget-object v9, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object v9, v9, v10

    iput-object v8, v9, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 189
    iget-object v9, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_18

    iget-object v9, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-ne v9, p0, :cond_18

    .line 191
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    iget v9, p0, Landroidx/constraintlayout/a/a/a;->a:I

    aget-object v7, v7, v9

    iget v7, v7, Landroidx/constraintlayout/a/a/d;->g:I

    add-int/2addr v7, v1

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    .line 193
    :goto_b
    iget v9, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v9, :cond_1a

    if-ne v9, v2, :cond_19

    goto :goto_c

    .line 196
    :cond_19
    iget-object v9, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->c:I

    add-int/2addr v10, v7

    .line 6229
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v11

    .line 6230
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->d()Landroidx/constraintlayout/a/h;

    move-result-object v12

    .line 6231
    iput v1, v12, Landroidx/constraintlayout/a/h;->d:I

    .line 6232
    invoke-virtual {v11, v9, v8, v12, v10}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    .line 6233
    invoke-virtual {p1, v11}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    goto :goto_d

    .line 194
    :cond_1a
    :goto_c
    iget-object v9, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->c:I

    sub-int/2addr v10, v7

    .line 5262
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v11

    .line 5263
    invoke-virtual {p1}, Landroidx/constraintlayout/a/d;->d()Landroidx/constraintlayout/a/h;

    move-result-object v12

    .line 5264
    iput v1, v12, Landroidx/constraintlayout/a/h;->d:I

    .line 5265
    invoke-virtual {v11, v9, v8, v12, v10}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    .line 5266
    invoke-virtual {p1, v11}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    .line 203
    :goto_d
    iget-object v9, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget v10, p0, Landroidx/constraintlayout/a/a/a;->c:I

    add-int/2addr v10, v7

    invoke-virtual {p1, v9, v8, v10, v6}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 210
    :cond_1c
    iget p2, p0, Landroidx/constraintlayout/a/a/a;->a:I

    const/16 v5, 0x8

    if-nez p2, :cond_1d

    .line 211
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->J:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 212
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 213
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    :cond_1d
    if-ne p2, v3, :cond_1e

    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 217
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->H:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    :cond_1e
    if-ne p2, v2, :cond_1f

    .line 219
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->K:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 220
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 221
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    :cond_1f
    if-ne p2, v4, :cond_20

    .line 223
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 224
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 225
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a;->I:Landroidx/constraintlayout/a/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->S:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_20
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    return v0
.end method

.method protected final d()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v1, v2, :cond_4

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v1

    .line 96
    iget v3, p0, Landroidx/constraintlayout/a/a/a;->a:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 99
    :cond_1
    invoke-virtual {v2, v4, v4}, Landroidx/constraintlayout/a/a/e;->a(IZ)V

    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    invoke-virtual {v2, v0, v4}, Landroidx/constraintlayout/a/a/e;->a(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e()I
    .locals 3

    .line 238
    iget v0, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 254
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    .line 255
    iget-object v4, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v4, v2

    .line 256
    iget-boolean v7, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 259
    :cond_0
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->b()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 261
    :cond_2
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->c()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    .line 266
    iget v2, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-lez v2, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 270
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v0, v4, :cond_10

    .line 271
    iget-object v4, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v4, v0

    .line 272
    iget-boolean v7, p0, Landroidx/constraintlayout/a/a/a;->b:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->a()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_6
    if-nez v3, :cond_b

    .line 276
    iget v3, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-nez v3, :cond_7

    .line 277
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v1, :cond_8

    .line 279
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    .line 281
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    .line 283
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    :cond_a
    :goto_4
    const/4 v3, 0x1

    .line 287
    :cond_b
    iget v7, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-nez v7, :cond_c

    .line 288
    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v7, v1, :cond_d

    .line 290
    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v7, v6, :cond_e

    .line 292
    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v7, v5, :cond_f

    .line 294
    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 297
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/a/a/a;->c:I

    add-int/2addr v2, v0

    .line 298
    iget v0, p0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v0, :cond_12

    if-ne v0, v1, :cond_11

    goto :goto_6

    .line 301
    :cond_11
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/a/a/a;->b(II)V

    goto :goto_7

    .line 299
    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/a/a/a;->a(II)V

    .line 306
    :goto_7
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a;->d:Z

    return v1

    :cond_13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Barrier] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3723
    iget-object v1, p0, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v1, v2, :cond_1

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4723
    iget-object v0, v2, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
