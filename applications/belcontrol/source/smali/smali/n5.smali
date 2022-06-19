.class public Ln5;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5<",
            "Lm5;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5<",
            "Lm5;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5<",
            "Lt5;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lt5;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr5;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lr5;-><init>(I)V

    iput-object v0, p0, Ln5;->a:Lq5;

    new-instance v0, Lr5;

    invoke-direct {v0, v1}, Lr5;-><init>(I)V

    iput-object v0, p0, Ln5;->b:Lq5;

    new-instance v0, Lr5;

    invoke-direct {v0, v1}, Lr5;-><init>(I)V

    iput-object v0, p0, Ln5;->c:Lq5;

    const/16 v0, 0x20

    new-array v0, v0, [Lt5;

    iput-object v0, p0, Ln5;->d:[Lt5;

    return-void
.end method
