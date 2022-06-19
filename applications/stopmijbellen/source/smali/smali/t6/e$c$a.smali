.class public Lt6/e$c$a;
.super Lt6/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/e$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt6/e<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt6/e$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lt6/e$c;->a:Lt6/e;

    invoke-direct {p0, p1}, Lt6/e$d;-><init>(Lt6/e;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt6/e$d;->a()Lt6/e$e;

    move-result-object v0

    iget-object v0, v0, Lt6/e$e;->f:Ljava/lang/Object;

    return-object v0
.end method
