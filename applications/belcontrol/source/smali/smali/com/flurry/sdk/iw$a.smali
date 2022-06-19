.class public final Lcom/flurry/sdk/iw$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/iw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/flurry/sdk/iw$a$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/flurry/sdk/iw$a$2;-><init>(Lcom/flurry/sdk/iw$a;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ix;->a(I)Lcom/flurry/sdk/ix;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    move/from16 p1, v4

    move-wide/from16 v16, v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    new-instance v1, Lcom/flurry/sdk/iw;

    const/4 v6, 0x0

    move-object v3, v1

    move-wide/from16 v18, v4

    move/from16 v5, p1

    move-object v4, v6

    move/from16 v20, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v3 .. v9}, Lcom/flurry/sdk/iw;-><init>(Lcom/flurry/sdk/iv;JJI)V

    iput-boolean v0, v1, Lcom/flurry/sdk/iw;->d:Z

    iput v10, v1, Lcom/flurry/sdk/iw;->e:I

    iput-object v11, v1, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    iput-object v12, v1, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    iput v13, v1, Lcom/flurry/sdk/iw;->h:I

    iput-wide v14, v1, Lcom/flurry/sdk/iw;->i:J

    move/from16 v0, v20

    iput-boolean v0, v1, Lcom/flurry/sdk/iw;->j:Z

    move-wide/from16 v3, v18

    iput-wide v3, v1, Lcom/flurry/sdk/iw;->k:J

    return-object v1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/flurry/sdk/iw;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/flurry/sdk/iw$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iw$a$1;-><init>(Lcom/flurry/sdk/iw$a;Ljava/io/OutputStream;)V

    iget p1, p2, Lcom/flurry/sdk/iw;->a:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v1, p2, Lcom/flurry/sdk/iw;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p2, Lcom/flurry/sdk/iw;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean p1, p2, Lcom/flurry/sdk/iw;->d:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget p1, p2, Lcom/flurry/sdk/iw;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p2, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    iget p1, p1, Lcom/flurry/sdk/ix;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p2, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget p1, p2, Lcom/flurry/sdk/iw;->h:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v1, p2, Lcom/flurry/sdk/iw;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean p1, p2, Lcom/flurry/sdk/iw;->j:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide p1, p2, Lcom/flurry/sdk/iw;->k:J

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_2
    :goto_1
    return-void
.end method
