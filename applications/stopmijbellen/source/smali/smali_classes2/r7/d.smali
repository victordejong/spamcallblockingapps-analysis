.class public Lr7/d;
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
.field public final synthetic a:Lr7/e;


# direct methods
.method public constructor <init>(Lr7/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr7/d;->a:Lr7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lr7/d;->a:Lr7/e;

    iget-object v0, v0, Lr7/e;->a:Lr7/f$a;

    iget-boolean v1, v0, Lr7/f$a;->b:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lr7/f$a;->e:Lr7/f;

    iget-object v0, v0, Lr7/f;->k:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    :cond_0
    iget-object p1, p0, Lr7/d;->a:Lr7/e;

    iget-object p1, p1, Lr7/e;->a:Lr7/f$a;

    .line 5
    invoke-virtual {p1}, Lr7/f$a;->c()V

    return-void
.end method
