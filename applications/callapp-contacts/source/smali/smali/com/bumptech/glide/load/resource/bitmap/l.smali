.class public final Lcom/bumptech/glide/load/resource/bitmap/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/l$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Lcom/bumptech/glide/load/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/bumptech/glide/load/resource/bitmap/l$a;

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final g:Lcom/bumptech/glide/load/engine/a/b;

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/bumptech/glide/load/engine/a/e;

.field private final m:Landroid/util/DisplayMetrics;

.field private final n:Lcom/bumptech/glide/load/resource/bitmap/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    sget-object v0, Lcom/bumptech/glide/load/b;->DEFAULT:Lcom/bumptech/glide/load/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 54
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->a:Lcom/bumptech/glide/load/g;

    .line 64
    sget-object v0, Lcom/bumptech/glide/load/i;->SRGB:Lcom/bumptech/glide/load/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 65
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->b:Lcom/bumptech/glide/load/g;

    .line 76
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Lcom/bumptech/glide/load/g;

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->c:Lcom/bumptech/glide/load/g;

    .line 89
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 90
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->d:Lcom/bumptech/glide/load/g;

    .line 109
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 110
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->e:Lcom/bumptech/glide/load/g;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->i:Ljava/util/Set;

    .line 117
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/l$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->f:Lcom/bumptech/glide/load/resource/bitmap/l$a;

    .line 129
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 131
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->j:Ljava/util/Set;

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Lcom/bumptech/glide/g/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->k:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/q;->a()Lcom/bumptech/glide/load/resource/bitmap/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->n:Lcom/bumptech/glide/load/resource/bitmap/q;

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->h:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 1023
    invoke-static {p2, p1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 149
    check-cast p2, Landroid/util/DisplayMetrics;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->m:Landroid/util/DisplayMetrics;

    .line 2023
    invoke-static {p3, p1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 150
    check-cast p2, Lcom/bumptech/glide/load/engine/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    .line 3023
    invoke-static {p4, p1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    check-cast p1, Lcom/bumptech/glide/load/engine/a/b;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    return-void
.end method

.method private static a(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p0, p0, v0

    .line 628
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 825
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 828
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 165
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v0

    return v0
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1

    .line 770
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 713
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 714
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 715
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method private static b(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    .line 730
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/l$a;->a()V

    .line 731
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/r;->c()V

    .line 736
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 737
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 738
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 740
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/y;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 742
    :try_start_0
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/r;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/y;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8847
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception decoding bitmap, outWidth: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outHeight: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outMimeType: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inBitmap: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9814
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 8856
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Downsampler"

    const/4 v1, 0x3

    .line 746
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 752
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 754
    :try_start_2
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 755
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 756
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 763
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/y;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 758
    :catch_1
    :try_start_3
    throw v4

    .line 761
    :cond_1
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/y;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static declared-synchronized b()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    monitor-enter v0

    .line 889
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/l;->k:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 890
    :try_start_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 891
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 893
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 894
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/l;->c(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 897
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    .line 891
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 901
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/l;->c(Landroid/graphics/BitmapFactory$Options;)V

    .line 902
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->k:Ljava/util/Queue;

    monitor-enter v0

    .line 903
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 904
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 910
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 911
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 912
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 913
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 914
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 915
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 916
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 917
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 918
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 919
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 920
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 922
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 923
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 924
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 925
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 926
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/resource/bitmap/r;IILcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/resource/bitmap/l$a;)Lcom/bumptech/glide/load/engine/u;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/r;",
            "II",
            "Lcom/bumptech/glide/load/h;",
            "Lcom/bumptech/glide/load/resource/bitmap/l$a;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 235
    iget-object v6, v1, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    const-class v7, [B

    const/high16 v8, 0x10000

    invoke-interface {v6, v8, v7}, Lcom/bumptech/glide/load/engine/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 236
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/l;->b()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 237
    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 239
    sget-object v8, Lcom/bumptech/glide/load/resource/bitmap/l;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {v4, v8}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/b;

    .line 240
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/l;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {v4, v9}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/i;

    .line 241
    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {v4, v10}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 242
    sget-object v11, Lcom/bumptech/glide/load/resource/bitmap/l;->d:Lcom/bumptech/glide/load/g;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 243
    sget-object v12, Lcom/bumptech/glide/load/resource/bitmap/l;->e:Lcom/bumptech/glide/load/g;

    .line 244
    invoke-virtual {v4, v12}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    invoke-virtual {v4, v12}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3278
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v12

    .line 3280
    iget-object v15, v1, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v0, v7, v5, v15}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)[I

    move-result-object v15

    move/from16 p4, v4

    .line 3281
    aget v4, v15, v14

    const/16 v16, 0x1

    .line 3282
    aget v15, v15, v16

    .line 3283
    iget-object v14, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v17, v6

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    if-ne v15, v6, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    move-wide/from16 v18, v12

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v18, v12

    const/4 v6, 0x0

    .line 3293
    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/r;->b()I

    move-result v12

    .line 3294
    invoke-static {v12}, Lcom/bumptech/glide/load/resource/bitmap/y;->a(I)I

    move-result v13

    move-object/from16 p4, v14

    .line 3295
    invoke-static {v12}, Lcom/bumptech/glide/load/resource/bitmap/y;->b(I)Z

    move-result v14

    move/from16 v20, v12

    const/high16 v12, -0x80000000

    if-ne v2, v12, :cond_4

    .line 3299
    invoke-static {v13}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(I)Z

    move-result v21

    if-eqz v21, :cond_3

    move v2, v15

    goto :goto_3

    :cond_3
    move v2, v4

    :cond_4
    :goto_3
    if-ne v3, v12, :cond_6

    .line 3303
    invoke-static {v13}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v4

    goto :goto_4

    :cond_5
    move v12, v15

    goto :goto_4

    :cond_6
    move v12, v3

    .line 3306
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/r;->a()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    move-object/from16 v21, v9

    .line 3308
    iget-object v9, v1, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v22, v11

    const-string v11, ", target density: "

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v24, v8

    const-string v8, "]"

    move/from16 v25, v6

    const-string v6, ", density: "

    move/from16 v26, v14

    const-string v14, "Downsampler"

    const-string v1, "x"

    if-lez v4, :cond_1a

    if-gtz v15, :cond_7

    goto/16 :goto_11

    .line 3455
    :cond_7
    :try_start_2
    invoke-static {v13}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(I)Z

    move-result v27

    move-object/from16 v28, v6

    if-eqz v27, :cond_8

    move-object/from16 v27, v8

    move-object/from16 v29, v11

    move v8, v15

    move v6, v4

    goto :goto_5

    :cond_8
    move-object/from16 v27, v8

    move-object/from16 v29, v11

    move v6, v15

    move v8, v4

    .line 3461
    :goto_5
    invoke-virtual {v10, v8, v6, v2, v12}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(IIII)F

    move-result v11

    const/16 v30, 0x0

    cmpg-float v30, v11, v30

    if-lez v30, :cond_19

    move/from16 v30, v13

    .line 3483
    invoke-virtual {v10, v8, v6, v2, v12}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(IIII)I

    move-result v13

    if-eqz v13, :cond_18

    move/from16 v31, v15

    int-to-float v15, v8

    move-object/from16 v32, v1

    mul-float v1, v11, v15

    move/from16 v33, v2

    float-to-double v1, v1

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v1, v1, v34

    double-to-int v1, v1

    int-to-float v2, v6

    move/from16 v36, v4

    mul-float v4, v11, v2

    float-to-double v4, v4

    add-double v4, v4, v34

    double-to-int v4, v4

    .line 3492
    div-int v1, v8, v1

    .line 3493
    div-int v4, v6, v4

    .line 3499
    sget v5, Lcom/bumptech/glide/load/resource/bitmap/k$g;->a:I

    if-ne v13, v5, :cond_9

    .line 3500
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    .line 3501
    :cond_9
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3505
    :goto_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_a

    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/l;->i:Ljava/util/Set;

    iget-object v5, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 3506
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    .line 3509
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3510
    sget v4, Lcom/bumptech/glide/load/resource/bitmap/k$g;->a:I

    if-ne v13, v4, :cond_b

    int-to-float v4, v1

    div-float v5, v23, v11

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    shl-int/lit8 v1, v1, 0x1

    .line 3521
    :cond_b
    :goto_7
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3524
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_d

    const/16 v4, 0x8

    .line 3528
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v15, v4

    float-to-double v5, v15

    .line 3529
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float/2addr v2, v4

    float-to-double v8, v2

    .line 3530
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 3531
    div-int/lit8 v4, v1, 0x8

    if-lez v4, :cond_c

    .line 3533
    div-int/2addr v5, v4

    .line 3534
    div-int/2addr v2, v4

    :cond_c
    :goto_8
    move-object/from16 v4, p5

    goto :goto_e

    .line 3536
    :cond_d
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_14

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_e

    goto :goto_b

    .line 3539
    :cond_e
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_12

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_f

    goto :goto_a

    .line 3547
    :cond_f
    rem-int v2, v8, v1

    if-nez v2, :cond_11

    rem-int v2, v6, v1

    if-eqz v2, :cond_10

    goto :goto_9

    .line 3559
    :cond_10
    div-int v5, v8, v1

    .line 3560
    div-int v2, v6, v1

    goto :goto_8

    :cond_11
    :goto_9
    move-object/from16 v4, p5

    .line 3551
    invoke-static {v0, v7, v4, v9}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)[I

    move-result-object v2

    const/4 v5, 0x0

    .line 3556
    aget v6, v2, v5

    const/4 v5, 0x1

    .line 3557
    aget v2, v2, v5

    goto :goto_d

    :cond_12
    :goto_a
    move-object/from16 v4, p5

    .line 3540
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_13

    int-to-float v5, v1

    div-float/2addr v15, v5

    .line 3541
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v2, v5

    .line 3542
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_d

    :cond_13
    int-to-float v5, v1

    div-float/2addr v15, v5

    float-to-double v8, v15

    .line 3544
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    div-float/2addr v2, v5

    float-to-double v8, v2

    .line 3545
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    goto :goto_c

    :cond_14
    :goto_b
    move-object/from16 v4, p5

    int-to-float v5, v1

    div-float/2addr v15, v5

    float-to-double v8, v15

    .line 3537
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    div-float/2addr v2, v5

    float-to-double v8, v2

    .line 3538
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :goto_c
    double-to-int v2, v8

    :goto_d
    move v5, v6

    :goto_e
    move/from16 v15, v33

    .line 3564
    invoke-virtual {v10, v5, v2, v15, v12}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(IIII)F

    move-result v6

    float-to-double v8, v6

    .line 3569
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v6, v10, :cond_15

    .line 5619
    invoke-static {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(D)I

    move-result v6

    move-object v13, v3

    int-to-double v3, v6

    mul-double v3, v3, v8

    add-double v3, v3, v34

    double-to-int v3, v3

    int-to-float v4, v3

    int-to-float v6, v6

    div-float/2addr v4, v6

    move v6, v1

    float-to-double v0, v4

    div-double v0, v8, v0

    int-to-double v3, v3

    mul-double v0, v0, v3

    add-double v0, v0, v34

    double-to-int v0, v0

    .line 3570
    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 3571
    invoke-static {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(D)I

    move-result v0

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_f

    :cond_15
    move v6, v1

    move-object v13, v3

    .line 3573
    :goto_f
    invoke-static {v7}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 3574
    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    .line 3576
    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_10
    const/4 v0, 0x2

    .line 3579
    invoke-static {v14, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calculate scaling, source: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], degreesToRotate: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", target: ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], power of two scaled: ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], exact scale factor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", power of 2 sample size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adjusted scale factor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v3

    move-object v8, v13

    goto/16 :goto_13

    :cond_17
    move-object/from16 v5, v28

    move-object/from16 v2, v29

    move/from16 v4, v31

    move/from16 v1, v36

    move-object/from16 v3, p0

    move-object v8, v13

    move-object/from16 v0, v32

    goto/16 :goto_14

    .line 3486
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v3, v1

    move v1, v4

    move v4, v15

    move v15, v2

    .line 3465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Cannot scale with factor: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " from: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", source: ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], target: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_11
    move-object v13, v3

    move-object v5, v6

    move-object v6, v8

    move-object v3, v1

    move v1, v4

    move v4, v15

    move v15, v2

    move-object v2, v11

    const/4 v0, 0x3

    .line 3435
    invoke-static {v14, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Unable to determine dimensions for: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v13

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_12

    :cond_1b
    move-object v8, v13

    :goto_12
    move-object v0, v3

    :goto_13
    move-object/from16 v3, p0

    .line 6661
    :goto_14
    :try_start_3
    iget-object v6, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->n:Lcom/bumptech/glide/load/resource/bitmap/q;

    move/from16 v10, v25

    move/from16 v9, v26

    .line 7215
    invoke-virtual {v6, v15, v12, v10, v9}, Lcom/bumptech/glide/load/resource/bitmap/q;->a(IIZZ)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 7218
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v9, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    .line 7219
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_15

    :cond_1c
    const/4 v9, 0x0

    :goto_15
    if-nez v6, :cond_21

    .line 6671
    sget-object v6, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    move-object/from16 v10, v24

    if-eq v10, v6, :cond_20

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v11, 0x10

    if-ne v6, v11, :cond_1d

    goto :goto_18

    .line 6679
    :cond_1d
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/r;->a()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_16

    :catch_0
    const/4 v6, 0x3

    .line 6681
    :try_start_5
    invoke-static {v14, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 6682
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1e
    const/4 v6, 0x0

    :goto_16
    if-eqz v6, :cond_1f

    .line 6692
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_17

    :cond_1f
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_17
    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6693
    iget-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v6, v10, :cond_21

    const/4 v6, 0x1

    .line 6694
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_19

    .line 6673
    :cond_20
    :goto_18
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3329
    :cond_21
    :goto_19
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v6, v10, :cond_22

    const/4 v6, 0x1

    goto :goto_1a

    :cond_22
    const/4 v6, 0x0

    .line 3331
    :goto_1a
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v13, 0x1a

    const/4 v9, 0x1

    if-eq v10, v9, :cond_23

    if-eqz v6, :cond_2a

    .line 7642
    :cond_23
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v10, v9, :cond_24

    const/4 v8, 0x1

    goto :goto_1b

    .line 7648
    :cond_24
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/l;->j:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    :goto_1b
    if-eqz v8, :cond_2a

    if-ltz v1, :cond_25

    if-ltz v4, :cond_25

    if-eqz v22, :cond_25

    if-eqz v6, :cond_25

    move v9, v15

    goto/16 :goto_1d

    .line 3342
    :cond_25
    invoke-static {v7}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v6, v6

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v8, v8

    div-float v23, v6, v8

    move/from16 v6, v23

    goto :goto_1c

    :cond_26
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3343
    :goto_1c
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v9, v1

    int-to-float v10, v8

    div-float/2addr v9, v10

    float-to-double v11, v9

    .line 3344
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    int-to-float v11, v4

    div-float/2addr v11, v10

    float-to-double v10, v11

    .line 3345
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v9, v9

    mul-float v9, v9, v6

    .line 3346
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v10, v10

    mul-float v10, v10, v6

    .line 3347
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/4 v10, 0x2

    .line 3349
    invoke-static {v14, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 3350
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Calculated target ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] for source ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], sampleSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", targetDensity: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", density multiplier: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_27
    :goto_1d
    if-lez v9, :cond_2a

    if-lez v12, :cond_2a

    .line 3375
    iget-object v6, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    .line 7866
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v13, :cond_28

    .line 7867
    iget-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v10, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v8, v10, :cond_2a

    .line 7872
    iget-object v8, v7, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1e

    :cond_28
    const/4 v8, 0x0

    :goto_1e
    if-nez v8, :cond_29

    .line 7881
    iget-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 7884
    :cond_29
    invoke-interface {v6, v9, v12, v8}, Lcom/bumptech/glide/load/engine/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 3379
    :cond_2a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v6, v8, :cond_2d

    .line 3380
    sget-object v6, Lcom/bumptech/glide/load/i;->DISPLAY_P3:Lcom/bumptech/glide/load/i;

    move-object/from16 v9, v21

    if-ne v9, v6, :cond_2b

    iget-object v6, v7, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v6, :cond_2b

    iget-object v6, v7, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 3383
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v16, 0x1

    goto :goto_1f

    :cond_2b
    const/16 v16, 0x0

    :goto_1f
    if-eqz v16, :cond_2c

    .line 3385
    sget-object v6, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_20

    :cond_2c
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_20
    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_21

    .line 3386
    :cond_2d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v13, :cond_2e

    .line 3387
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 3390
    :cond_2e
    :goto_21
    iget-object v6, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-static {v8, v7, v9, v6}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3391
    iget-object v8, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v9, v8, v6}, Lcom/bumptech/glide/load/resource/bitmap/l$a;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x2

    .line 3393
    invoke-static {v14, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 8784
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Decoded "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8787
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with inBitmap "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8814
    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 8795
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], sample size: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thread: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8810
    invoke-static/range {v18 .. v19}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_2f
    if-eqz v6, :cond_30

    .line 3409
    iget-object v0, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->m:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3411
    iget-object v0, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    move/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/bumptech/glide/load/resource/bitmap/y;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3412
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3413
    iget-object v0, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, v6}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    goto :goto_22

    :cond_30
    const/4 v11, 0x0

    .line 259
    :cond_31
    :goto_22
    iget-object v0, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->l:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v11, v0}, Lcom/bumptech/glide/load/resource/bitmap/e;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    invoke-static {v7}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(Landroid/graphics/BitmapFactory$Options;)V

    .line 262
    iget-object v1, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    move-object/from16 v6, v17

    invoke-interface {v1, v6}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_23

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_23

    :catchall_2
    move-exception v0

    move-object v3, v1

    :goto_23
    move-object/from16 v6, v17

    goto :goto_24

    :catchall_3
    move-exception v0

    move-object v3, v1

    .line 261
    :goto_24
    invoke-static {v7}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(Landroid/graphics/BitmapFactory$Options;)V

    .line 262
    iget-object v1, v3, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {v1, v6}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/io/InputStream;IILcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/resource/bitmap/l$a;)Lcom/bumptech/glide/load/engine/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/h;",
            "Lcom/bumptech/glide/load/resource/bitmap/l$a;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/r$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/r$a;-><init>(Ljava/io/InputStream;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/b;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Lcom/bumptech/glide/load/resource/bitmap/r;IILcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/resource/bitmap/l$a;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method
