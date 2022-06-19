.class public final Lx1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/k;


# instance fields
.field public final a:Ld1/f;

.field public final b:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "Lx1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx1/l;->a:Ld1/f;

    .line 3
    new-instance v0, Lx1/l$a;

    invoke-direct {v0, p0, p1}, Lx1/l$a;-><init>(Lx1/l;Ld1/f;)V

    iput-object v0, p0, Lx1/l;->b:Ld1/b;

    return-void
.end method
