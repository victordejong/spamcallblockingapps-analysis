.class public final Lcom/bumptech/glide/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/bumptech/glide/g/e$1;

    invoke-direct {v0}, Lcom/bumptech/glide/g/e$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/e;->a:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Lcom/bumptech/glide/g/e$2;

    invoke-direct {v0}, Lcom/bumptech/glide/g/e$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 32
    sget-object v0, Lcom/bumptech/glide/g/e;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 37
    sget-object v0, Lcom/bumptech/glide/g/e;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
