.class public final enum Lokhttp3/y;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lokhttp3/y;

.field public static final enum b:Lokhttp3/y;

.field public static final enum c:Lokhttp3/y;

.field public static final enum d:Lokhttp3/y;

.field public static final enum e:Lokhttp3/y;

.field private static final synthetic g:[Lokhttp3/y;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lokhttp3/y;

    const-string/jumbo v1, "HTTP_1_0"

    const-string/jumbo v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->a:Lokhttp3/y;

    .line 41
    new-instance v0, Lokhttp3/y;

    const-string/jumbo v1, "HTTP_1_1"

    const-string/jumbo v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->b:Lokhttp3/y;

    .line 51
    new-instance v0, Lokhttp3/y;

    const-string/jumbo v1, "SPDY_3"

    const-string/jumbo v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->c:Lokhttp3/y;

    .line 62
    new-instance v0, Lokhttp3/y;

    const-string/jumbo v1, "HTTP_2"

    const-string/jumbo v2, "h2"

    invoke-direct {v0, v1, v6, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->d:Lokhttp3/y;

    .line 72
    new-instance v0, Lokhttp3/y;

    const-string/jumbo v1, "QUIC"

    const-string/jumbo v2, "quic"

    invoke-direct {v0, v1, v7, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->e:Lokhttp3/y;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lokhttp3/y;

    sget-object v1, Lokhttp3/y;->a:Lokhttp3/y;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/y;->b:Lokhttp3/y;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/y;->c:Lokhttp3/y;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/y;->d:Lokhttp3/y;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/y;->e:Lokhttp3/y;

    aput-object v1, v0, v7

    sput-object v0, Lokhttp3/y;->g:[Lokhttp3/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lokhttp3/y;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/y;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lokhttp3/y;->a:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/y;->a:Lokhttp3/y;

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lokhttp3/y;->b:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lokhttp3/y;->b:Lokhttp3/y;

    goto :goto_0

    .line 89
    :cond_1
    sget-object v0, Lokhttp3/y;->d:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/y;->d:Lokhttp3/y;

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Lokhttp3/y;->c:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lokhttp3/y;->c:Lokhttp3/y;

    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lokhttp3/y;->e:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lokhttp3/y;->e:Lokhttp3/y;

    goto :goto_0

    .line 92
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/y;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lokhttp3/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/y;

    return-object v0
.end method

.method public static values()[Lokhttp3/y;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lokhttp3/y;->g:[Lokhttp3/y;

    invoke-virtual {v0}, [Lokhttp3/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/y;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/y;->f:Ljava/lang/String;

    return-object v0
.end method
