.class public final Lcom/google/android/exoplayer2/upstream/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/upstream/q;

.field public static final b:Lcom/google/android/exoplayer2/upstream/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/android/exoplayer2/upstream/q;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/q;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/q;

    .line 28
    sget-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$q$Pcdl-EGphWSf8yFwIwIVQupeK64;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$q$Pcdl-EGphWSf8yFwIwIVQupeK64;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$Pcdl-EGphWSf8yFwIwIVQupeK64()Lcom/google/android/exoplayer2/upstream/q;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/q;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/q;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a([BII)I
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DummyDataSource cannot be opened"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 0

    return-void
.end method

.method public synthetic b()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/h$-CC;->$default$b(Lcom/google/android/exoplayer2/upstream/h;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
