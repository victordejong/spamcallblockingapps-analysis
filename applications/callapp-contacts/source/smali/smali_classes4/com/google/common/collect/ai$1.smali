.class public final Lcom/google/common/collect/ai$1;
.super Lcom/google/common/collect/ai$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ai$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/google/common/collect/ai$1;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/ai$c;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/google/common/collect/ai$1;->a:I

    .line 1034
    invoke-static {v0}, Lcom/google/common/collect/k;->a(I)Lcom/google/common/collect/k;

    move-result-object v0

    return-object v0
.end method
