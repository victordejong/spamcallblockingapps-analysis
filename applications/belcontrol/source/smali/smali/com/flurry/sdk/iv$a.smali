.class public final Lcom/flurry/sdk/iv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/iv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ln<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/ln;

    new-instance v1, Lcom/flurry/sdk/iw$a;

    invoke-direct {v1}, Lcom/flurry/sdk/iw$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/lo;)V

    iput-object v0, p0, Lcom/flurry/sdk/iv$a;->a:Lcom/flurry/sdk/ln;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lcom/flurry/sdk/iv$a$2;

    invoke-direct {v3, v0, v1}, Lcom/flurry/sdk/iv$a$2;-><init>(Lcom/flurry/sdk/iv$a;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v8, v4

    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Lcom/flurry/sdk/jc;->a(I)Lcom/flurry/sdk/jc;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v17, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    move/from16 v17, v6

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v17

    goto :goto_1

    :cond_2
    move-object/from16 v17, v7

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v20, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v20, v7

    :goto_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    new-instance v5, Lcom/flurry/sdk/iv;

    move-object v7, v5

    move/from16 v18, v6

    invoke-direct/range {v7 .. v20}, Lcom/flurry/sdk/iv;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/jc;Ljava/util/Map;IILjava/lang/String;)V

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv;J)J

    invoke-static {v5, v3}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv;Z)Z

    iput v4, v5, Lcom/flurry/sdk/le;->p:I

    iget-object v1, v0, Lcom/flurry/sdk/iv$a;->a:Lcom/flurry/sdk/ln;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ln;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v5, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/flurry/sdk/iv;->d()V

    return-object v5
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/flurry/sdk/iv;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lcom/flurry/sdk/iv$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iv$a$1;-><init>(Lcom/flurry/sdk/iv$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p2, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_1
    iget-wide v3, p2, Lcom/flurry/sdk/le;->n:J

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v1, p2, Lcom/flurry/sdk/le;->p:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/iv;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/iv;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->d(Lcom/flurry/sdk/iv;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->e(Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/jc;

    move-result-object v1

    iget v1, v1, Lcom/flurry/sdk/jc;->e:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->f(Lcom/flurry/sdk/iv;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/flurry/sdk/iv;->f(Lcom/flurry/sdk/iv;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->f(Lcom/flurry/sdk/iv;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_4
    invoke-static {p2}, Lcom/flurry/sdk/iv;->g(Lcom/flurry/sdk/iv;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->h(Lcom/flurry/sdk/iv;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->i(Lcom/flurry/sdk/iv;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iv;->j(Lcom/flurry/sdk/iv;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/flurry/sdk/iv;->j(Lcom/flurry/sdk/iv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_3
    invoke-static {p2}, Lcom/flurry/sdk/iv;->k(Lcom/flurry/sdk/iv;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/flurry/sdk/iv$a;->a:Lcom/flurry/sdk/ln;

    iget-object p2, p2, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ln;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_6
    :goto_4
    return-void
.end method
