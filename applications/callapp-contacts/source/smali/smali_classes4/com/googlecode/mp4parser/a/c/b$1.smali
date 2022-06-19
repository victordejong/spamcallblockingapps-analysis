.class final Lcom/googlecode/mp4parser/a/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/a/c/b;->a(I)Lcom/googlecode/mp4parser/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/a/c/b;

.field private final synthetic b:J

.field private final synthetic c:Ljava/nio/ByteBuffer;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/a/c/b;JLjava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/c/b$1;->a:Lcom/googlecode/mp4parser/a/c/b;

    iput-wide p2, p0, Lcom/googlecode/mp4parser/a/c/b$1;->b:J

    iput-object p4, p0, Lcom/googlecode/mp4parser/a/c/b$1;->c:Ljava/nio/ByteBuffer;

    iput p5, p0, Lcom/googlecode/mp4parser/a/c/b$1;->d:I

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/c/b$1;->b:J

    return-wide v0
.end method

.method public final a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b$1;->c:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/b$1;->d:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/mp4parser/a/c/b$1;->b:J

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 202
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
