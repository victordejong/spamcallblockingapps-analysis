.class abstract Lcom/google/common/collect/ae$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/ae$g<",
        "TK;TV;TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ae$g<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/google/common/collect/ae$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ae$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITE;)V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/google/common/collect/ae$b;->a:Ljava/lang/Object;

    .line 346
    iput p2, p0, Lcom/google/common/collect/ae$b;->b:I

    .line 347
    iput-object p3, p0, Lcom/google/common/collect/ae$b;->c:Lcom/google/common/collect/ae$g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/ae$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/google/common/collect/ae$b;->b:I

    return v0
.end method

.method public final c()Lcom/google/common/collect/ae$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/ae$b;->c:Lcom/google/common/collect/ae$g;

    return-object v0
.end method
