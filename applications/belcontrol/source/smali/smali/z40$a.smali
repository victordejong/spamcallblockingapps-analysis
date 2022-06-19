.class public final Lz40$a;
.super Lf50$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf50$a<",
        "Lz40$a;",
        "Lz40;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lf50$a;-><init>(Ljava/lang/Class;)V

    iget-object p1, p0, Lf50$a;->c:Lc70;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc70;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lf50;
    .locals 1

    invoke-virtual {p0}, Lz40$a;->g()Lz40;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lf50$a;
    .locals 0

    invoke-virtual {p0}, Lz40$a;->h()Lz40$a;

    return-object p0
.end method

.method public g()Lz40;
    .locals 2

    iget-boolean v0, p0, Lf50$a;->a:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lf50$a;->c:Lc70;

    iget-object v0, v0, Lc70;->j:Ls40;

    invoke-virtual {v0}, Ls40;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lz40;

    invoke-direct {v0, p0}, Lz40;-><init>(Lz40$a;)V

    return-object v0
.end method

.method public h()Lz40$a;
    .locals 0

    return-object p0
.end method
