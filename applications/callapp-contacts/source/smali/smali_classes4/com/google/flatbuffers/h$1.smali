.class final Lcom/google/flatbuffers/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/flatbuffers/h;->sortTables([ILjava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/google/flatbuffers/h;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/h;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/flatbuffers/h$1;->b:Lcom/google/flatbuffers/h;

    iput-object p2, p0, Lcom/google/flatbuffers/h$1;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 232
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .line 1234
    iget-object v0, p0, Lcom/google/flatbuffers/h$1;->b:Lcom/google/flatbuffers/h;

    iget-object v1, p0, Lcom/google/flatbuffers/h$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/flatbuffers/h;->keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
