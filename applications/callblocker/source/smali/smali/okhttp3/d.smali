.class public final Lokhttp3/d;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/d$a;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/d;

.field public static final b:Lokhttp3/d;


# instance fields
.field c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lokhttp3/d$a;

    invoke-direct {v0}, Lokhttp3/d$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/d$a;->a()Lokhttp3/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d$a;->c()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->a:Lokhttp3/d;

    .line 25
    new-instance v0, Lokhttp3/d$a;

    invoke-direct {v0}, Lokhttp3/d$a;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/d$a;->b()Lokhttp3/d$a;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v1, v2}, Lokhttp3/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/d$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/d$a;->c()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->b:Lokhttp3/d;

    .line 25
    return-void
.end method

.method constructor <init>(Lokhttp3/d$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lokhttp3/d$a;->a:Z

    iput-boolean v0, p0, Lokhttp3/d;->d:Z

    .line 66
    iget-boolean v0, p1, Lokhttp3/d$a;->b:Z

    iput-boolean v0, p0, Lokhttp3/d;->e:Z

    .line 67
    iget v0, p1, Lokhttp3/d$a;->c:I

    iput v0, p0, Lokhttp3/d;->f:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/d;->g:I

    .line 69
    iput-boolean v1, p0, Lokhttp3/d;->h:Z

    .line 70
    iput-boolean v1, p0, Lokhttp3/d;->i:Z

    .line 71
    iput-boolean v1, p0, Lokhttp3/d;->j:Z

    .line 72
    iget v0, p1, Lokhttp3/d$a;->d:I

    iput v0, p0, Lokhttp3/d;->k:I

    .line 73
    iget v0, p1, Lokhttp3/d$a;->e:I

    iput v0, p0, Lokhttp3/d;->l:I

    .line 74
    iget-boolean v0, p1, Lokhttp3/d$a;->f:Z

    iput-boolean v0, p0, Lokhttp3/d;->m:Z

    .line 75
    iget-boolean v0, p1, Lokhttp3/d$a;->g:Z

    iput-boolean v0, p0, Lokhttp3/d;->n:Z

    .line 76
    iget-boolean v0, p1, Lokhttp3/d$a;->h:Z

    iput-boolean v0, p0, Lokhttp3/d;->o:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lokhttp3/d;->d:Z

    .line 50
    iput-boolean p2, p0, Lokhttp3/d;->e:Z

    .line 51
    iput p3, p0, Lokhttp3/d;->f:I

    .line 52
    iput p4, p0, Lokhttp3/d;->g:I

    .line 53
    iput-boolean p5, p0, Lokhttp3/d;->h:Z

    .line 54
    iput-boolean p6, p0, Lokhttp3/d;->i:Z

    .line 55
    iput-boolean p7, p0, Lokhttp3/d;->j:Z

    .line 56
    iput p8, p0, Lokhttp3/d;->k:I

    .line 57
    iput p9, p0, Lokhttp3/d;->l:I

    .line 58
    iput-boolean p10, p0, Lokhttp3/d;->m:Z

    .line 59
    iput-boolean p11, p0, Lokhttp3/d;->n:Z

    .line 60
    iput-boolean p12, p0, Lokhttp3/d;->o:Z

    .line 61
    iput-object p13, p0, Lokhttp3/d;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Lokhttp3/s;)Lokhttp3/d;
    .locals 23

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    const/4 v4, 0x0

    .line 155
    const/4 v5, -0x1

    .line 156
    const/4 v6, -0x1

    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, -0x1

    .line 161
    const/4 v11, -0x1

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 166
    const/16 v16, 0x1

    .line 167
    const/4 v2, 0x0

    .line 169
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lokhttp3/s;->a()I

    move-result v20

    move/from16 v19, v15

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 170
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/s;->a(I)Ljava/lang/String;

    move-result-object v17

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/s;->b(I)Ljava/lang/String;

    move-result-object v15

    .line 173
    const-string/jumbo v18, "Cache-Control"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 174
    if-eqz v2, :cond_2

    .line 176
    const/16 v16, 0x0

    .line 187
    :goto_1
    const/16 v17, 0x0

    move/from16 v18, v3

    .line 188
    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 190
    const-string/jumbo v3, "=,;"

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 191
    move/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 194
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v22, 0x2c

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v22, 0x3b

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 195
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 196
    const/16 v17, 0x0

    .line 217
    :goto_3
    const-string/jumbo v22, "no-cache"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 218
    const/16 v18, 0x1

    :cond_1
    :goto_4
    move/from16 v17, v3

    .line 242
    goto :goto_2

    :cond_2
    move-object v2, v15

    .line 178
    goto :goto_1

    .line 180
    :cond_3
    const-string/jumbo v18, "Pragma"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 182
    const/16 v16, 0x0

    goto :goto_1

    .line 198
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 199
    invoke-static {v15, v3}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;I)I

    move-result v17

    .line 202
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x22

    move/from16 v0, v22

    if-ne v3, v0, :cond_5

    .line 203
    add-int/lit8 v3, v17, 0x1

    .line 205
    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-static {v15, v3, v0}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 206
    move/from16 v0, v22

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 207
    add-int/lit8 v3, v22, 0x1

    .line 210
    goto :goto_3

    .line 212
    :cond_5
    const-string/jumbo v3, ",;"

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 213
    move/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 219
    :cond_6
    const-string/jumbo v22, "no-store"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 220
    const/4 v4, 0x1

    goto :goto_4

    .line 221
    :cond_7
    const-string/jumbo v22, "max-age"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 222
    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lokhttp3/internal/b/e;->b(Ljava/lang/String;I)I

    move-result v5

    goto :goto_4

    .line 223
    :cond_8
    const-string/jumbo v22, "s-maxage"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 224
    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lokhttp3/internal/b/e;->b(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_4

    .line 225
    :cond_9
    const-string/jumbo v22, "private"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 226
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 227
    :cond_a
    const-string/jumbo v22, "public"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 228
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 229
    :cond_b
    const-string/jumbo v22, "must-revalidate"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 230
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 231
    :cond_c
    const-string/jumbo v22, "max-stale"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 232
    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lokhttp3/internal/b/e;->b(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_4

    .line 233
    :cond_d
    const-string/jumbo v22, "min-fresh"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 234
    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lokhttp3/internal/b/e;->b(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_4

    .line 235
    :cond_e
    const-string/jumbo v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 236
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 237
    :cond_f
    const-string/jumbo v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 238
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 239
    :cond_10
    const-string/jumbo v17, "immutable"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 240
    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_11
    move/from16 v18, v3

    .line 169
    :cond_12
    add-int/lit8 v15, v19, 0x1

    move/from16 v19, v15

    move/from16 v3, v18

    goto/16 :goto_0

    .line 245
    :cond_13
    if-nez v16, :cond_14

    .line 246
    const/4 v15, 0x0

    .line 248
    :goto_5
    new-instance v2, Lokhttp3/d;

    invoke-direct/range {v2 .. v15}, Lokhttp3/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v2

    :cond_14
    move-object v15, v2

    goto :goto_5
.end method

.method private k()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-boolean v1, p0, Lokhttp3/d;->d:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    iget-boolean v1, p0, Lokhttp3/d;->e:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    iget v1, p0, Lokhttp3/d;->f:I

    if-eq v1, v3, :cond_2

    const-string/jumbo v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    iget v1, p0, Lokhttp3/d;->g:I

    if-eq v1, v3, :cond_3

    const-string/jumbo v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    iget-boolean v1, p0, Lokhttp3/d;->h:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_4
    iget-boolean v1, p0, Lokhttp3/d;->i:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_5
    iget-boolean v1, p0, Lokhttp3/d;->j:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_6
    iget v1, p0, Lokhttp3/d;->k:I

    if-eq v1, v3, :cond_7

    const-string/jumbo v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_7
    iget v1, p0, Lokhttp3/d;->l:I

    if-eq v1, v3, :cond_8

    const-string/jumbo v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_8
    iget-boolean v1, p0, Lokhttp3/d;->m:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_9
    iget-boolean v1, p0, Lokhttp3/d;->n:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_a
    iget-boolean v1, p0, Lokhttp3/d;->o:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v0, ""

    .line 274
    :goto_0
    return-object v0

    .line 273
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lokhttp3/d;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lokhttp3/d;->e:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lokhttp3/d;->f:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lokhttp3/d;->h:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lokhttp3/d;->i:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lokhttp3/d;->j:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lokhttp3/d;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lokhttp3/d;->l:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lokhttp3/d;->m:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lokhttp3/d;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lokhttp3/d;->c:Ljava/lang/String;

    .line 255
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lokhttp3/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/d;->c:Ljava/lang/String;

    goto :goto_0
.end method
