.class public abstract Lcom/bumptech/glide/load/resource/bitmap/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/k$g;,
        Lcom/bumptech/glide/load/resource/bitmap/k$c;,
        Lcom/bumptech/glide/load/resource/bitmap/k$f;,
        Lcom/bumptech/glide/load/resource/bitmap/k$b;,
        Lcom/bumptech/glide/load/resource/bitmap/k$a;,
        Lcom/bumptech/glide/load/resource/bitmap/k$d;,
        Lcom/bumptech/glide/load/resource/bitmap/k$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final b:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final c:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final d:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final e:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final f:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final g:Lcom/bumptech/glide/load/resource/bitmap/k;

.field public static final h:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 47
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 67
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 81
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->e:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 84
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k$f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k$f;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->f:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 87
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->g:Lcom/bumptech/glide/load/resource/bitmap/k;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 97
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Lcom/bumptech/glide/load/g;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)F
.end method

.method public abstract b(IIII)I
.end method
