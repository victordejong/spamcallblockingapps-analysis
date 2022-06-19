.class public Lr7/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/f;->c(Lk7/m;Lk7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk7/t$b<",
        "[B>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Lk7/m;

.field public final synthetic d:Lk7/t;

.field public final synthetic e:Lr7/f;


# direct methods
.method public constructor <init>(Lr7/f;Lk7/m;Lk7/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr7/f$a;->e:Lr7/f;

    iput-object p2, p0, Lr7/f$a;->c:Lk7/m;

    iput-object p3, p0, Lr7/f$a;->d:Lk7/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, [B

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lr7/f;->p([BILjava/nio/ByteOrder;)S

    move-result v0

    const/4 v2, 0x1

    const/16 v3, -0x74e1

    if-eq v0, v3, :cond_0

    .line 3
    iget-object p1, p0, Lr7/f$a;->e:Lr7/f;

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "unknown format (magic number %x)"

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lr7/g;->n(Ljava/lang/Exception;)V

    .line 4
    iget-object p1, p0, Lr7/f$a;->c:Lk7/m;

    new-instance v0, Ll7/c$a;

    invoke-direct {v0}, Ll7/c$a;-><init>()V

    invoke-interface {p1, v0}, Lk7/m;->b(Ll7/c;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 5
    aget-byte v0, p1, v0

    iput v0, p0, Lr7/f$a;->a:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iput-boolean v2, p0, Lr7/f$a;->b:Z

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, p0, Lr7/f$a;->e:Lr7/f;

    iget-object v0, v0, Lr7/f;->k:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 8
    :cond_2
    iget p1, p0, Lr7/f$a;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lr7/f$a;->d:Lk7/t;

    new-instance v0, Lr7/e;

    invoke-direct {v0, p0}, Lr7/e;-><init>(Lr7/f$a;)V

    invoke-virtual {p1, v3, v0}, Lk7/t;->a(ILk7/t$b;)Lk7/t;

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lr7/f$a;->c()V

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr7/f$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lr7/f$a;->d:Lk7/t;

    const/4 v1, 0x2

    new-instance v2, Lr7/f$a$b;

    invoke-direct {v2, p0}, Lr7/f$a$b;-><init>(Lr7/f$a;)V

    invoke-virtual {v0, v1, v2}, Lk7/t;->a(ILk7/t$b;)Lk7/t;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lr7/f$a;->e:Lr7/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lr7/f;->j:Z

    .line 4
    iget-object v1, p0, Lr7/f$a;->c:Lk7/m;

    invoke-virtual {v0, v1}, Lk7/r;->o(Lk7/m;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    new-instance v0, Lk7/t;

    iget-object v1, p0, Lr7/f$a;->c:Lk7/m;

    invoke-direct {v0, v1}, Lk7/t;-><init>(Lk7/m;)V

    .line 2
    new-instance v1, Lr7/f$a$a;

    invoke-direct {v1, p0}, Lr7/f$a$a;-><init>(Lr7/f$a;)V

    .line 3
    iget v2, p0, Lr7/f$a;->a:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v0, Lk7/t;->b:Ljava/util/LinkedList;

    new-instance v2, Lk7/t$c;

    invoke-direct {v2, v4, v1}, Lk7/t$c;-><init>(BLl7/c;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Lk7/t;->b:Ljava/util/LinkedList;

    new-instance v2, Lk7/t$c;

    invoke-direct {v2, v4, v1}, Lk7/t$c;-><init>(BLl7/c;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lr7/f$a;->b()V

    return-void
.end method
