.class final Lcom/google/common/collect/ai$c$1;
.super Lcom/google/common/collect/ai$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ai$c;->b()Lcom/google/common/collect/ai$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ai$b<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/ai$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ai$c;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/google/common/collect/ai$c$1;->b:Lcom/google/common/collect/ai$c;

    iput p2, p0, Lcom/google/common/collect/ai$c$1;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/ai$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/ai$c$1;->b:Lcom/google/common/collect/ai$c;

    .line 297
    invoke-virtual {v0}, Lcom/google/common/collect/ai$c;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ai$a;

    iget v2, p0, Lcom/google/common/collect/ai$c$1;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/ai$a;-><init>(I)V

    .line 1221
    new-instance v2, Lcom/google/common/collect/aj$a;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/aj$a;-><init>(Ljava/util/Map;Lcom/google/common/base/q;)V

    return-object v2
.end method
