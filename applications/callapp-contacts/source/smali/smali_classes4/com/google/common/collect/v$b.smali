.class final Lcom/google/common/collect/v$b;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v<",
            "TE;>;I)V"
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Lcom/google/common/collect/v;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/a;-><init>(II)V

    .line 381
    iput-object p1, p0, Lcom/google/common/collect/v$b;->a:Lcom/google/common/collect/v;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/v$b;->a:Lcom/google/common/collect/v;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
