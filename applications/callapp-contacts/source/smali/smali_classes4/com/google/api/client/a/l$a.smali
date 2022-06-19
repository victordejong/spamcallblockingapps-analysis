.class final Lcom/google/api/client/a/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(JIZLjava/lang/Integer;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-wide p1, p0, Lcom/google/api/client/a/l$a;->a:J

    .line 347
    iput p3, p0, Lcom/google/api/client/a/l$a;->b:I

    .line 348
    iput-boolean p4, p0, Lcom/google/api/client/a/l$a;->c:Z

    .line 349
    iput-object p5, p0, Lcom/google/api/client/a/l$a;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(JIZLjava/lang/Integer;Lcom/google/api/client/a/l$1;)V
    .locals 0

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/a/l$a;-><init>(JIZLjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/api/client/a/l;
    .locals 6

    .line 357
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/api/client/a/l$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 358
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/google/api/client/a/l$a;->b:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 359
    new-instance v4, Lcom/google/api/client/a/l;

    iget-boolean v5, p0, Lcom/google/api/client/a/l$a;->c:Z

    xor-int/lit8 v5, v5, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/api/client/a/l$a;->d:Ljava/lang/Integer;

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/google/api/client/a/l;-><init>(ZJLjava/lang/Integer;)V

    return-object v4
.end method
