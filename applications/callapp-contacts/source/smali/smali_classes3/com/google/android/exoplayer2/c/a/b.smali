.class public final Lcom/google/android/exoplayer2/c/a/b;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lokhttp3/Call$Factory;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/exoplayer2/upstream/v;

.field private final d:Lokhttp3/CacheControl;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;Lokhttp3/CacheControl;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/b;->a:Lokhttp3/Call$Factory;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/a/b;->b:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/google/android/exoplayer2/c/a/b;->c:Lcom/google/android/exoplayer2/upstream/v;

    .line 99
    iput-object p4, p0, Lcom/google/android/exoplayer2/c/a/b;->d:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;Lokhttp3/CacheControl;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 4

    .line 1107
    new-instance v0, Lcom/google/android/exoplayer2/c/a/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->a:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/a/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/a/b;->d:Lokhttp3/CacheControl;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    .line 1113
    iget-object p1, p0, Lcom/google/android/exoplayer2/c/a/b;->c:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz p1, :cond_0

    .line 1114
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c/a/a;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    :cond_0
    return-object v0
.end method
