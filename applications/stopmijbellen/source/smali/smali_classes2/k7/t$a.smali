.class public Lk7/t$a;
.super Lk7/t$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lk7/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk7/t$b<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILk7/t$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lk7/t$b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lk7/t$d;-><init>(I)V

    if-lez p1, :cond_0

    .line 2
    iput-object p2, p0, Lk7/t$a;->b:Lk7/t$b;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lk7/m;Lk7/l;)Lk7/t$d;
    .locals 2

    .line 1
    iget p1, p0, Lk7/t$d;->a:I

    new-array v0, p1, [B

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1, p1}, Lk7/l;->e([BII)V

    .line 4
    iget-object p1, p0, Lk7/t$a;->b:Lk7/t$b;

    invoke-interface {p1, v0}, Lk7/t$b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
