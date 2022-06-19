.class public final Lcom/bumptech/glide/load/g;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/g$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/g$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/g;->a:Lcom/bumptech/glide/load/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/g$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/bumptech/glide/load/g;->b:Ljava/lang/Object;

    .line 96
    invoke-static {p3}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/g;->c:Lcom/bumptech/glide/load/g$a;

    .line 97
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bumptech/glide/load/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/bumptech/glide/load/g;

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/load/g;->c()Lcom/bumptech/glide/load/g$a;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/load/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/bumptech/glide/load/g;

    invoke-static {}, Lcom/bumptech/glide/load/g;->c()Lcom/bumptech/glide/load/g$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)Lcom/bumptech/glide/load/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/g$a",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/bumptech/glide/load/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)V

    return-object v0
.end method

.method private b()[B
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->e:[B

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/g;->e:[B

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->e:[B

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/load/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/g$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/bumptech/glide/load/g;->a:Lcom/bumptech/glide/load/g$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->c:Lcom/bumptech/glide/load/g$a;

    invoke-direct {p0}, Lcom/bumptech/glide/load/g;->b()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bumptech/glide/load/g$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    .line 116
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 128
    instance-of v0, p1, Lcom/bumptech/glide/load/g;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/bumptech/glide/load/g;

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
