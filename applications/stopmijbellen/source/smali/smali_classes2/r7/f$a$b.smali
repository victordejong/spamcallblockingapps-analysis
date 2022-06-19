.class public Lr7/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/f$a;->b()V
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
.field public final synthetic a:Lr7/f$a;


# direct methods
.method public constructor <init>(Lr7/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr7/f$a$b;->a:Lr7/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, [B

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lr7/f;->p([BILjava/nio/ByteOrder;)S

    move-result p1

    .line 3
    iget-object v0, p0, Lr7/f$a$b;->a:Lr7/f$a;

    iget-object v0, v0, Lr7/f$a;->e:Lr7/f;

    iget-object v0, v0, Lr7/f;->k:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    if-eq v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lr7/f$a$b;->a:Lr7/f$a;

    iget-object p1, p1, Lr7/f$a;->e:Lr7/f;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr7/g;->n(Ljava/lang/Exception;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lr7/f$a$b;->a:Lr7/f$a;

    iget-object p1, p1, Lr7/f$a;->e:Lr7/f;

    iget-object p1, p1, Lr7/f;->k:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 6
    iget-object p1, p0, Lr7/f$a$b;->a:Lr7/f$a;

    iget-object v0, p1, Lr7/f$a;->e:Lr7/f;

    iput-boolean v1, v0, Lr7/f;->j:Z

    .line 7
    iget-object p1, p1, Lr7/f$a;->c:Lk7/m;

    invoke-virtual {v0, p1}, Lk7/r;->o(Lk7/m;)V

    :goto_0
    return-void
.end method
