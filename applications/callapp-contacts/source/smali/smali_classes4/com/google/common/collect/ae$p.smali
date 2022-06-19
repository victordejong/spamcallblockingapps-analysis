.class final Lcom/google/common/collect/ae$p;
.super Lcom/google/common/collect/ae$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae$l<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$o<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$p<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ae<",
            "TK;TV;",
            "Lcom/google/common/collect/ae$o<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ae$p<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2007
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ae$l;-><init>(Lcom/google/common/collect/ae;II)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/common/collect/ae$l;
    .locals 0

    return-object p0
.end method
