.class public final Lcom/flurry/sdk/iz$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/iz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ln<",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/ln;

    new-instance v1, Lcom/flurry/sdk/iv$a;

    invoke-direct {v1}, Lcom/flurry/sdk/iv$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/lo;)V

    iput-object v0, p0, Lcom/flurry/sdk/iz$a;->a:Lcom/flurry/sdk/ln;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v2, Lcom/flurry/sdk/iz$a$2;

    invoke-direct {v2, v0, v1}, Lcom/flurry/sdk/iz$a$2;-><init>(Lcom/flurry/sdk/iz$a;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/jd;->a(I)Lcom/flurry/sdk/jd;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-instance v11, Lcom/flurry/sdk/iz;

    const/16 v16, 0x0

    move-object v3, v11

    move-object v1, v11

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/flurry/sdk/iz;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/jd;Ljava/util/Map;)V

    invoke-static {v1, v12, v13}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iz;J)J

    invoke-static {v1, v14}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iz;I)I

    invoke-static {v1, v15}, Lcom/flurry/sdk/iz;->b(Lcom/flurry/sdk/iz;I)I

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v3}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iz;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v0, Lcom/flurry/sdk/iz$a;->a:Lcom/flurry/sdk/ln;

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/ln;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v2}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iz;Ljava/util/Map;)Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/iv;

    iput-object v3, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    invoke-static {v3}, Lcom/flurry/sdk/iz;->j(Lcom/flurry/sdk/iz;)Ljava/util/Map;

    move-result-object v4

    iget-wide v5, v2, Lcom/flurry/sdk/iv;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/flurry/sdk/iz;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/flurry/sdk/iz$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iz$a$1;-><init>(Lcom/flurry/sdk/iz$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iz;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->b(Lcom/flurry/sdk/iz;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->c(Lcom/flurry/sdk/iz;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->d(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/jd;

    move-result-object v1

    iget v1, v1, Lcom/flurry/sdk/jd;->e:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->e(Lcom/flurry/sdk/iz;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->f(Lcom/flurry/sdk/iz;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->g(Lcom/flurry/sdk/iz;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/flurry/sdk/iz;->g(Lcom/flurry/sdk/iz;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->h(Lcom/flurry/sdk/iz;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/iz;->i(Lcom/flurry/sdk/iz;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/flurry/sdk/iz$a;->a:Lcom/flurry/sdk/ln;

    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ln;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method
