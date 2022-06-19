.class public Lr7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/t$b;


# annotations
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
    iput-object p1, p0, Lr7/e;->a:Lr7/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lr7/e;->a:Lr7/f$a;

    iget-boolean v1, v0, Lr7/f$a;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lr7/f$a;->e:Lr7/f;

    iget-object v0, v0, Lr7/f;->k:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lr7/f;->p([BILjava/nio/ByteOrder;)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 5
    iget-object v0, p0, Lr7/e;->a:Lr7/f$a;

    iget-object v0, v0, Lr7/f$a;->d:Lk7/t;

    new-instance v1, Lr7/d;

    invoke-direct {v1, p0}, Lr7/d;-><init>(Lr7/e;)V

    invoke-virtual {v0, p1, v1}, Lk7/t;->a(ILk7/t$b;)Lk7/t;

    return-void
.end method
