.class public Lgp0$a;
.super Lgp0$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgp0$b<",
        "Lgp0$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgp0$b;-><init>()V

    iget-object v0, p0, Lgp0$b;->a:Lgp0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgp0;->p:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic d()Lgp0$b;
    .locals 0

    invoke-virtual {p0}, Lgp0$a;->v()Lgp0$a;

    return-object p0
.end method

.method public v()Lgp0$a;
    .locals 0

    return-object p0
.end method
