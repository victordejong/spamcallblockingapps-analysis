.class public Lk7/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/s$a;
    }
.end annotation


# instance fields
.field public a:Lk7/l;

.field public b:Lk7/s$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lk7/s;->a:Lk7/l;

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 7

    .line 1
    iget p1, p2, Lk7/l;->c:I

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    :goto_0
    iget v0, p2, Lk7/l;->c:I

    if-lez v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lk7/l;->c()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object p2, p0, Lk7/s;->a:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 7
    iget-object p1, p0, Lk7/s;->b:Lk7/s$a;

    iget-object p2, p0, Lk7/s;->a:Lk7/l;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lu7/c;->b:Ljava/nio/charset/Charset;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v2, p2, Lk7/l;->a:Lu7/b;

    invoke-virtual {v2}, Lu7/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v2

    check-cast v3, Lu7/b$b;

    invoke-virtual {v3}, Lu7/b$b;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lu7/b$b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 14
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    .line 17
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 18
    :goto_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lk7/l;->n()V

    .line 21
    invoke-interface {p1, v0}, Lk7/s$a;->a(Ljava/lang/String;)V

    .line 22
    new-instance p1, Lk7/l;

    invoke-direct {p1}, Lk7/l;-><init>()V

    iput-object p1, p0, Lk7/s;->a:Lk7/l;

    return-void

    .line 23
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    iget-object p2, p0, Lk7/s;->a:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    return-void
.end method
