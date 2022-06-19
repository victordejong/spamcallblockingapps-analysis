.class final Lcom/theartofdev/edmodo/cropper/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/content/Context;

.field private final e:[F

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Z

.field private final o:Z

.field private final p:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

.field private final q:Landroid/net/Uri;

.field private final r:Landroid/graphics/Bitmap$CompressFormat;

.field private final s:I


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 3

    move-object v0, p0

    .line 101
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->a:Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->d:Landroid/content/Context;

    move-object v1, p2

    .line 105
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->b:Landroid/graphics/Bitmap;

    move-object v1, p3

    .line 106
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->e:[F

    const/4 v1, 0x0

    .line 107
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->c:Landroid/net/Uri;

    move v1, p4

    .line 108
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->f:I

    move v1, p5

    .line 109
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->i:Z

    move v1, p6

    .line 110
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->j:I

    move v1, p7

    .line 111
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->k:I

    move v1, p8

    .line 112
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->l:I

    move v1, p9

    .line 113
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->m:I

    move v1, p10

    .line 114
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->n:Z

    move v1, p11

    .line 115
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->o:Z

    move-object v1, p12

    .line 116
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    move-object/from16 v1, p13

    .line 117
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->q:Landroid/net/Uri;

    move-object/from16 v1, p14

    .line 118
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->r:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v1, p15

    .line 119
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->s:I

    const/4 v1, 0x0

    .line 120
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->g:I

    .line 121
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->h:I

    return-void
.end method

.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 3

    move-object v0, p0

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->a:Ljava/lang/ref/WeakReference;

    .line 144
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->d:Landroid/content/Context;

    move-object v1, p2

    .line 145
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->c:Landroid/net/Uri;

    move-object v1, p3

    .line 146
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->e:[F

    move v1, p4

    .line 147
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->f:I

    move v1, p7

    .line 148
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->i:Z

    move v1, p8

    .line 149
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->j:I

    move v1, p9

    .line 150
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->k:I

    move v1, p5

    .line 151
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->g:I

    move v1, p6

    .line 152
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->h:I

    move v1, p10

    .line 153
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->l:I

    move v1, p11

    .line 154
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->m:I

    move v1, p12

    .line 155
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->n:Z

    move/from16 v1, p13

    .line 156
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/a;->o:Z

    move-object/from16 v1, p14

    .line 157
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    move-object/from16 v1, p15

    .line 158
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->q:Landroid/net/Uri;

    move-object/from16 v1, p16

    .line 159
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->r:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v1, p17

    .line 160
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/a;->s:I

    const/4 v1, 0x0

    .line 161
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/a;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private varargs a()Lcom/theartofdev/edmodo/cropper/a$a;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 178
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/a;->isCancelled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 181
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/a;->c:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 182
    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/a;->d:Landroid/content/Context;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/a;->e:[F

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/a;->f:I

    iget v8, v1, Lcom/theartofdev/edmodo/cropper/a;->g:I

    iget v9, v1, Lcom/theartofdev/edmodo/cropper/a;->h:I

    iget-boolean v10, v1, Lcom/theartofdev/edmodo/cropper/a;->i:Z

    iget v11, v1, Lcom/theartofdev/edmodo/cropper/a;->j:I

    iget v12, v1, Lcom/theartofdev/edmodo/cropper/a;->k:I

    iget v13, v1, Lcom/theartofdev/edmodo/cropper/a;->l:I

    iget v14, v1, Lcom/theartofdev/edmodo/cropper/a;->m:I

    iget-boolean v15, v1, Lcom/theartofdev/edmodo/cropper/a;->n:Z

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/a;->o:Z

    move/from16 v16, v0

    .line 183
    invoke-static/range {v4 .. v16}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 198
    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/a;->e:[F

    iget v5, v1, Lcom/theartofdev/edmodo/cropper/a;->f:I

    iget-boolean v6, v1, Lcom/theartofdev/edmodo/cropper/a;->i:Z

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/a;->j:I

    iget v8, v1, Lcom/theartofdev/edmodo/cropper/a;->k:I

    iget-boolean v9, v1, Lcom/theartofdev/edmodo/cropper/a;->n:Z

    iget-boolean v10, v1, Lcom/theartofdev/edmodo/cropper/a;->o:Z

    move-object v3, v0

    .line 199
    invoke-static/range {v3 .. v10}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    .line 212
    :goto_0
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    iget v4, v1, Lcom/theartofdev/edmodo/cropper/a;->l:I

    iget v5, v1, Lcom/theartofdev/edmodo/cropper/a;->m:I

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/a;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    .line 213
    invoke-static {v3, v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$i;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 215
    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/a;->q:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 216
    new-instance v4, Lcom/theartofdev/edmodo/cropper/a$a;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/c$a;->b:I

    invoke-direct {v4, v3, v0}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v4

    .line 218
    :cond_1
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/a;->d:Landroid/content/Context;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/a;->r:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/a;->s:I

    invoke-static {v5, v3, v4, v6, v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_2
    new-instance v3, Lcom/theartofdev/edmodo/cropper/a$a;

    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/a;->q:Landroid/net/Uri;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/c$a;->b:I

    invoke-direct {v3, v4, v0}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/net/Uri;I)V

    return-object v3

    .line 209
    :cond_3
    new-instance v0, Lcom/theartofdev/edmodo/cropper/a$a;

    invoke-direct {v0, v3, v2}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    return-object v3

    :catch_0
    move-exception v0

    .line 228
    new-instance v3, Lcom/theartofdev/edmodo/cropper/a$a;

    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/a;->q:Landroid/net/Uri;

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v3, v0, v2}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Ljava/lang/Exception;Z)V

    return-object v3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/a;->a()Lcom/theartofdev/edmodo/cropper/a$a;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 16

    .line 23
    move-object/from16 v0, p1

    check-cast v0, Lcom/theartofdev/edmodo/cropper/a$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    .line 1242
    iget-object v3, v2, Lcom/theartofdev/edmodo/cropper/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 2163
    iput-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    .line 2164
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    .line 2166
    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageView;->g:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    if-eqz v4, :cond_0

    .line 2168
    new-instance v15, Lcom/theartofdev/edmodo/cropper/CropImageView$a;

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/a$a;->a:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/theartofdev/edmodo/cropper/a$a;->b:Landroid/net/Uri;

    iget-object v10, v0, Lcom/theartofdev/edmodo/cropper/a$a;->c:Ljava/lang/Exception;

    .line 2175
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->c()[F

    move-result-object v11

    .line 2176
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->b()Landroid/graphics/Rect;

    move-result-object v12

    .line 2177
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a()Landroid/graphics/Rect;

    move-result-object v13

    .line 2441
    iget v14, v3, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    .line 2178
    iget v3, v0, Lcom/theartofdev/edmodo/cropper/a$a;->e:I

    move-object v5, v15

    move-object v1, v15

    move v15, v3

    invoke-direct/range {v5 .. v15}, Lcom/theartofdev/edmodo/cropper/CropImageView$a;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2180
    invoke-interface {v4, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->a(Lcom/theartofdev/edmodo/cropper/CropImageView$a;)V

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 1248
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/a$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1250
    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p0

    :cond_4
    :goto_1
    return-void
.end method
