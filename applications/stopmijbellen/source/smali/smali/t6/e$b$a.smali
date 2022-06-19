.class public Lt6/e$b$a;
.super Lt6/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/e$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt6/e<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt6/e$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lt6/e$b;->a:Lt6/e;

    invoke-direct {p0, p1}, Lt6/e$d;-><init>(Lt6/e;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt6/e$d;->a()Lt6/e$e;

    move-result-object v0

    return-object v0
.end method
