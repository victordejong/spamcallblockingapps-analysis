.class public Lcom/googlecode/mp4parser/b/b/a/h;
.super Lcom/googlecode/mp4parser/b/b/a/b;
.source "SourceFile"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/b/b/a/g;
    a = {
        0x3
    }
.end annotation


# static fields
.field private static n:Ljava/util/logging/Logger;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/googlecode/mp4parser/b/b/a/e;

.field public l:Lcom/googlecode/mp4parser/b/b/a/n;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/googlecode/mp4parser/b/b/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/a/h;->n:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a/b;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->Y:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 118
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 121
    :goto_0
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    if-lez v1, :cond_1

    .line 122
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 124
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/n;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    return v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " Doesn\'t handle other descriptors yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    .line 1068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    .line 86
    iput v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    ushr-int/lit8 v2, v0, 0x6

    const/4 v3, 0x1

    and-int/2addr v2, v3

    .line 87
    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    ushr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v3

    .line 88
    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    and-int/lit8 v0, v0, 0x1f

    .line 89
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    if-ne v1, v3, :cond_0

    .line 92
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    .line 94
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    if-ne v0, v3, :cond_1

    .line 2068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 95
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    .line 96
    invoke-static {p1, v0}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    .line 98
    :cond_1
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    if-ne v0, v3, :cond_2

    .line 99
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt v0, v3, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    .line 103
    invoke-static {v0, p1}, Lcom/googlecode/mp4parser/b/b/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/b/b/a/b;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v1, :cond_4

    .line 105
    check-cast v0, Lcom/googlecode/mp4parser/b/b/a/e;

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    goto :goto_0

    .line 106
    :cond_4
    instance-of v1, v0, Lcom/googlecode/mp4parser/b/b/a/n;

    if-eqz v1, :cond_5

    .line 107
    check-cast v0, Lcom/googlecode/mp4parser/b/b/a/n;

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    goto :goto_0

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 293
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/b/b/a/h;

    .line 295
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    if-eq v2, v3, :cond_2

    return v1

    .line 296
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    if-eq v2, v3, :cond_3

    return v1

    .line 297
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    if-eq v2, v3, :cond_4

    return v1

    .line 298
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    if-eq v2, v3, :cond_5

    return v1

    .line 299
    :cond_5
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    if-eq v2, v3, :cond_6

    return v1

    .line 300
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    if-eq v2, v3, :cond_7

    return v1

    .line 301
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    if-eq v2, v3, :cond_8

    return v1

    .line 302
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    if-eq v2, v3, :cond_9

    return v1

    .line 303
    :cond_9
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    if-eq v2, v3, :cond_a

    return v1

    .line 304
    :cond_a
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_0
    return v1

    .line 305
    :cond_c
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_d
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v2, :cond_e

    :goto_1
    return v1

    .line 307
    :cond_e
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_f
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    if-eqz v2, :cond_10

    :goto_2
    return v1

    .line 309
    :cond_10
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/b/b/a/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_3

    :cond_11
    if-eqz p1, :cond_12

    :goto_3
    return v1

    :cond_12
    return v0

    :cond_13
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 317
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 322
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 324
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 325
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 326
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/n;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ESDescriptor"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{esId="

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamDependenceFlag="

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLFlag="

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCRstreamFlag="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamPriority="

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLLength="

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLString=\'"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", remoteODFlag="

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnEsId="

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCREsId="

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decoderConfigDescriptor="

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slConfigDescriptor="

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
