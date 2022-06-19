.class public final Lokhttp3/internal/http2/b;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final a:La/f;

.field public static final b:La/f;

.field public static final c:La/f;

.field public static final d:La/f;

.field public static final e:La/f;

.field public static final f:La/f;


# instance fields
.field public final g:La/f;

.field public final h:La/f;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 24
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->a:La/f;

    const-string v0, ":status"

    .line 25
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->b:La/f;

    const-string v0, ":method"

    .line 26
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->c:La/f;

    const-string v0, ":path"

    .line 27
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->d:La/f;

    const-string v0, ":scheme"

    .line 28
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->e:La/f;

    const-string v0, ":authority"

    .line 29
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->f:La/f;

    return-void
.end method

.method public constructor <init>(La/f;La/f;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lokhttp3/internal/http2/b;->g:La/f;

    .line 48
    iput-object p2, p0, Lokhttp3/internal/http2/b;->h:La/f;

    .line 49
    invoke-virtual {p1}, La/f;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, La/f;->g()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lokhttp3/internal/http2/b;->i:I

    return-void
.end method

.method public constructor <init>(La/f;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p2}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/b;-><init>(La/f;La/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object p1

    invoke-static {p2}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/b;-><init>(La/f;La/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lokhttp3/internal/http2/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lokhttp3/internal/http2/b;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/http2/b;->g:La/f;

    iget-object v2, p1, Lokhttp3/internal/http2/b;->g:La/f;

    invoke-virtual {v0, v2}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/b;->h:La/f;

    iget-object p1, p1, Lokhttp3/internal/http2/b;->h:La/f;

    .line 56
    invoke-virtual {v0, p1}, La/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lokhttp3/internal/http2/b;->g:La/f;

    invoke-virtual {v0}, La/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 64
    iget-object v0, p0, Lokhttp3/internal/http2/b;->h:La/f;

    invoke-virtual {v0}, La/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lokhttp3/internal/http2/b;->g:La/f;

    invoke-virtual {v1}, La/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lokhttp3/internal/http2/b;->h:La/f;

    invoke-virtual {v1}, La/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
