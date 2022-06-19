.class final Lcom/google/common/collect/f$b;
.super Lcom/google/common/collect/f$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f<",
        "TK;TV;>.a;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/google/common/collect/f$a;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lcom/google/common/collect/av;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 136
    invoke-static {p0}, Lcom/google/common/collect/av;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
