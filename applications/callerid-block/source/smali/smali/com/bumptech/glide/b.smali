.class public Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field private static volatile j:Lcom/bumptech/glide/b;

.field private static volatile k:Z


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/x/e;

.field private final c:Lcom/bumptech/glide/load/engine/y/h;

.field private final d:Lcom/bumptech/glide/d;

.field private final e:Lcom/bumptech/glide/Registry;

.field private final f:Lcom/bumptech/glide/load/engine/x/b;

.field private final g:Lcom/bumptech/glide/manager/o;

.field private final h:Lcom/bumptech/glide/manager/d;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/e;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Lcom/bumptech/glide/load/engine/y/h;",
            "Lcom/bumptech/glide/load/engine/x/e;",
            "Lcom/bumptech/glide/load/engine/x/b;",
            "Lcom/bumptech/glide/manager/o;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/d<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/e;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    const-class v4, Lcom/bumptech/glide/k/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    sget-object v8, Lcom/bumptech/glide/MemoryCategory;->c:Lcom/bumptech/glide/MemoryCategory;

    iput-object v1, v0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/x/e;

    iput-object v3, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/load/engine/x/b;

    move-object/from16 v8, p3

    iput-object v8, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/load/engine/y/h;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/manager/o;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/manager/d;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lcom/bumptech/glide/Registry;

    invoke-direct {v9}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v9, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/Registry;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/Registry;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-lt v10, v11, :cond_0

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v11}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    invoke-virtual {v9, v11}, Lcom/bumptech/glide/Registry;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    :cond_0
    invoke-virtual {v9}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/bumptech/glide/load/j/g/a;

    invoke-direct {v12, v2, v11, v1, v3}, Lcom/bumptech/glide/load/j/g/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;)V

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->h(Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/f;

    move-result-object v13

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-virtual {v9}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {v14, v15, v0, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;)V

    const-class v0, Lcom/bumptech/glide/c$b;

    move-object/from16 v15, p12

    invoke-virtual {v15, v0}, Lcom/bumptech/glide/e;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    if-lt v10, v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>()V

    new-instance v16, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct/range {v16 .. v16}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    move-object/from16 v15, v16

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v0, v14}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;)V

    move-object/from16 p3, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/w;

    invoke-direct {v0, v14, v3}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/engine/x/b;)V

    move-object/from16 v15, p3

    :goto_0
    move-object/from16 v16, v7

    new-instance v7, Lcom/bumptech/glide/load/j/e/d;

    invoke-direct {v7, v2}, Lcom/bumptech/glide/load/j/e/d;-><init>(Landroid/content/Context;)V

    move/from16 p3, v10

    new-instance v10, Lcom/bumptech/glide/load/i/s$c;

    invoke-direct {v10, v8}, Lcom/bumptech/glide/load/i/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Lcom/bumptech/glide/load/i/s$d;

    invoke-direct {v2, v8}, Lcom/bumptech/glide/load/i/s$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    new-instance v5, Lcom/bumptech/glide/load/i/s$b;

    invoke-direct {v5, v8}, Lcom/bumptech/glide/load/i/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v2

    new-instance v2, Lcom/bumptech/glide/load/i/s$a;

    invoke-direct {v2, v8}, Lcom/bumptech/glide/load/i/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p7, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    move-object/from16 v18, v6

    new-instance v6, Lcom/bumptech/glide/load/j/h/a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/h/a;-><init>()V

    move-object/from16 v19, v6

    new-instance v6, Lcom/bumptech/glide/load/j/h/d;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/h/d;-><init>()V

    move-object/from16 v20, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v21, v6

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v5

    new-instance v5, Lcom/bumptech/glide/load/i/c;

    invoke-direct {v5}, Lcom/bumptech/glide/load/i/c;-><init>()V

    invoke-virtual {v9, v6, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/t;

    invoke-direct {v6, v3}, Lcom/bumptech/glide/load/i/t;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    invoke-virtual {v9, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    move-object/from16 v23, v10

    const-string v10, "Bitmap"

    invoke-virtual {v9, v10, v5, v6, v15}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10, v5, v6, v0}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    move-object/from16 v24, v7

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v7, v14}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;)V

    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    goto :goto_1

    :cond_2
    move-object/from16 v24, v7

    :goto_1
    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10, v5, v6, v13}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->c(Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/f;

    move-result-object v7

    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/bumptech/glide/load/i/v$a;->a()Lcom/bumptech/glide/load/i/v$a;

    move-result-object v7

    invoke-virtual {v9, v5, v6, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/y;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>()V

    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v7, v8, v15}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    const-string v14, "BitmapDrawable"

    invoke-virtual {v9, v14, v5, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v7, v8, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v14, v5, v6, v7}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v6, v8, v13}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v14, v0, v5, v6}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v5, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/g;)V

    invoke-virtual {v9, v0, v5}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/InputStream;

    const-class v2, Lcom/bumptech/glide/load/j/g/c;

    new-instance v5, Lcom/bumptech/glide/load/j/g/j;

    invoke-direct {v5, v11, v12, v3}, Lcom/bumptech/glide/load/j/g/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/x/b;)V

    const-string v6, "Gif"

    invoke-virtual {v9, v6, v0, v2, v5}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v2, Lcom/bumptech/glide/load/j/g/c;

    invoke-virtual {v9, v6, v0, v2, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Lcom/bumptech/glide/load/j/g/c;

    new-instance v2, Lcom/bumptech/glide/load/j/g/d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/j/g/d;-><init>()V

    invoke-virtual {v9, v0, v2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    invoke-static {}, Lcom/bumptech/glide/load/i/v$a;->a()Lcom/bumptech/glide/load/i/v$a;

    move-result-object v0

    invoke-virtual {v9, v4, v4, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/Bitmap;

    new-instance v2, Lcom/bumptech/glide/load/j/g/h;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/j/g/h;-><init>(Lcom/bumptech/glide/load/engine/x/e;)V

    invoke-virtual {v9, v10, v4, v0, v2}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/drawable/Drawable;

    move-object/from16 v4, v24

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/v;

    invoke-direct {v5, v4, v1}, Lcom/bumptech/glide/load/resource/bitmap/v;-><init>(Lcom/bumptech/glide/load/j/e/d;Lcom/bumptech/glide/load/engine/x/e;)V

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    new-instance v0, Lcom/bumptech/glide/load/j/d/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/j/d/a$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/i/d$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/i/d$b;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/i/f$e;

    invoke-direct {v4}, Lcom/bumptech/glide/load/i/f$e;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    new-instance v4, Lcom/bumptech/glide/load/j/f/a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/j/f/a;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/File;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/i/f$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/i/f$b;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    invoke-static {}, Lcom/bumptech/glide/load/i/v$a;->a()Lcom/bumptech/glide/load/i/v$a;

    move-result-object v4

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    new-instance v0, Lcom/bumptech/glide/load/data/k$a;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/data/k$a;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/Registry;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v23

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v5, v22

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v6, v18

    invoke-virtual {v9, v6, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v6, v2, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    move-object/from16 v4, p6

    invoke-virtual {v9, v6, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, p7

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v9, v6, v2, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/i/e$c;

    invoke-direct {v2}, Lcom/bumptech/glide/load/i/e$c;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/i/e$c;

    invoke-direct {v5}, Lcom/bumptech/glide/load/i/e$c;-><init>()V

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/i/u$c;

    invoke-direct {v2}, Lcom/bumptech/glide/load/i/u$c;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/i/u$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/i/u$b;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/i/u$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/i/u$a;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/i/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/i/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/i/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/i/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/i/y/b$a;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/i/y/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/i/y/c$a;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/i/y/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const/16 v0, 0x1d

    move/from16 v2, p3

    if-lt v2, v0, :cond_4

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/y/d$c;

    invoke-direct {v6, v5}, Lcom/bumptech/glide/load/i/y/d$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/i/y/d$b;

    invoke-direct {v6, v5}, Lcom/bumptech/glide/load/i/y/d$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    :cond_4
    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/w$d;

    move-object/from16 v7, v21

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/i/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/i/w$b;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/i/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/i/w$a;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/i/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/x$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/i/x$a;-><init>()V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/y/e$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/i/y/e$a;-><init>()V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/i/k$a;

    invoke-direct {v6, v5}, Lcom/bumptech/glide/load/i/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Lcom/bumptech/glide/load/i/g;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/i/y/a$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/i/y/a$a;-><init>()V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/i/b$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/i/b$a;-><init>()V

    move-object/from16 v6, v16

    invoke-virtual {v9, v6, v0, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/i/b$d;

    invoke-direct {v4}, Lcom/bumptech/glide/load/i/b$d;-><init>()V

    invoke-virtual {v9, v6, v0, v4}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/net/Uri;

    invoke-static {}, Lcom/bumptech/glide/load/i/v$a;->a()Lcom/bumptech/glide/load/i/v$a;

    move-result-object v7

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/bumptech/glide/load/i/v$a;->a()Lcom/bumptech/glide/load/i/v$a;

    move-result-object v7

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i/o;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/j/e/e;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/e/e;-><init>()V

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/j/h/b;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/h/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/h/e;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v4, v19

    invoke-virtual {v9, v0, v6, v4}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/h/e;)Lcom/bumptech/glide/Registry;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/j/h/c;

    move-object/from16 v10, v20

    invoke-direct {v7, v1, v4, v10}, Lcom/bumptech/glide/load/j/h/c;-><init>(Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/j/h/e;Lcom/bumptech/glide/load/j/h/e;)V

    invoke-virtual {v9, v0, v6, v7}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/h/e;)Lcom/bumptech/glide/Registry;

    const-class v0, Lcom/bumptech/glide/load/j/g/c;

    invoke-virtual {v9, v0, v6, v10}, Lcom/bumptech/glide/Registry;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/h/e;)Lcom/bumptech/glide/Registry;

    const/16 v0, 0x17

    if-lt v2, v0, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->d(Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/f;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v1, v2, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v4, v8, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v1, v2, v4}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/h/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h/f;-><init>()V

    new-instance v12, Lcom/bumptech/glide/d;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v9

    move-object v5, v0

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move-object/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/h/f;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/e;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1

    sget-boolean v0, Lcom/bumptech/glide/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->k:Z

    invoke-static {p0, p1}, Lcom/bumptech/glide/b;->m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/bumptech/glide/b;->k:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    throw v0

    :catch_4
    nop

    const/4 p0, 0x5

    const-string v1, "Glide"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static l(Landroid/content/Context;)Lcom/bumptech/glide/manager/o;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/o/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->k()Lcom/bumptech/glide/manager/o;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/c;

    invoke-direct {v0}, Lcom/bumptech/glide/c;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/b;->n(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bumptech/glide/l/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/bumptech/glide/l/d;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/l/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/l/d;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/l/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/l/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Lcom/bumptech/glide/manager/o$b;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/manager/o$b;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/l/b;

    invoke-interface {v2, p0, p1}, Lcom/bumptech/glide/l/b;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2, p0, p1}, Lcom/bumptech/glide/l/a;->b(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/l/b;

    :try_start_0
    iget-object v2, p1, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/Registry;

    invoke-interface {v1, p0, p1, v2}, Lcom/bumptech/glide/l/b;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    iget-object v0, p1, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/Registry;

    invoke-virtual {p2, p0, p1, v0}, Lcom/bumptech/glide/l/c;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/Registry;)V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object p1, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    return-void
.end method

.method private static q(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static t(Landroid/app/Activity;)Lcom/bumptech/glide/h;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->e(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->f(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->g(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/o/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/y/h;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/x/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/x/e;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/load/engine/x/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/x/b;->b()V

    return-void
.end method

.method public e()Lcom/bumptech/glide/load/engine/x/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/load/engine/x/b;

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/load/engine/x/e;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/x/e;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/manager/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/bumptech/glide/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/manager/o;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/manager/o;

    return-object v0
.end method

.method o(Lcom/bumptech/glide/h;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->r(I)V

    return-void
.end method

.method p(Lcom/bumptech/glide/request/h/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/i<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->z(Lcom/bumptech/glide/request/h/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public r(I)V
    .locals 3

    invoke-static {}, Lcom/bumptech/glide/o/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->onTrimMemory(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/y/h;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/x/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/x/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/load/engine/x/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/x/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method s(Lcom/bumptech/glide/h;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
