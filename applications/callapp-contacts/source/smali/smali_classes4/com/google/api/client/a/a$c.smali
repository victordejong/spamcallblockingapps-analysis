.class final Lcom/google/api/client/a/a$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/a/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/a/a;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/google/api/client/a/a$c;->a:Lcom/google/api/client/a/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/google/api/client/a/a$b;

    iget-object v1, p0, Lcom/google/api/client/a/a$c;->a:Lcom/google/api/client/a/a;

    invoke-direct {v0, v1}, Lcom/google/api/client/a/a$b;-><init>(Lcom/google/api/client/a/a;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/api/client/a/a$c;->a:Lcom/google/api/client/a/a;

    iget v0, v0, Lcom/google/api/client/a/a;->a:I

    return v0
.end method
