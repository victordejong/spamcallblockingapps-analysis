.class public Lr7/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/f$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr7/f$a;


# direct methods
.method public constructor <init>(Lr7/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr7/f$a$a;->a:Lr7/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lr7/f$a$a;->a:Lr7/f$a;

    iget-boolean p1, p1, Lr7/f$a;->b:Z

    if-eqz p1, :cond_0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lk7/l;->p()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lr7/f$a$a;->a:Lr7/f$a;

    iget-object v0, v0, Lr7/f$a;->e:Lr7/f;

    iget-object v0, v0, Lr7/f;->k:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    invoke-static {p1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lk7/l;->n()V

    .line 7
    iget-object p1, p0, Lr7/f$a$a;->a:Lr7/f$a;

    .line 8
    invoke-virtual {p1}, Lr7/f$a;->b()V

    return-void
.end method
