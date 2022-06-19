.class public final Ls6/k;
.super Ls6/i;
.source "SourceFile"


# instance fields
.field public final a:Lt6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/e<",
            "Ljava/lang/String;",
            "Ls6/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls6/i;-><init>()V

    .line 2
    new-instance v0, Lt6/e;

    invoke-direct {v0}, Lt6/e;-><init>()V

    iput-object v0, p0, Ls6/k;->a:Lt6/e;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ls6/i;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ls6/j;->a:Ls6/j;

    goto :goto_0

    :cond_0
    new-instance v0, Ls6/m;

    invoke-direct {v0, p1}, Ls6/m;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ls6/k;

    if-eqz v0, :cond_0

    check-cast p1, Ls6/k;

    iget-object p1, p1, Ls6/k;->a:Lt6/e;

    iget-object v0, p0, Ls6/k;->a:Lt6/e;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f(Ljava/lang/String;)Ls6/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/k;->a:Lt6/e;

    .line 2
    invoke-virtual {v0, p1}, Lt6/e;->c(Ljava/lang/Object;)Lt6/e$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lt6/e$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Ls6/i;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/k;->a:Lt6/e;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
