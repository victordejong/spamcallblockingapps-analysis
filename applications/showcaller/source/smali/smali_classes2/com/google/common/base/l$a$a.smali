.class Lcom/google/common/base/l$a$a;
.super Lcom/google/common/base/l$b;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/l$a;->b(Lcom/google/common/base/l;Ljava/lang/CharSequence;)Lcom/google/common/base/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/google/common/base/l$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/l$a;Lcom/google/common/base/l;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/l$a$a;->k:Lcom/google/common/base/l$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/l$b;-><init>(Lcom/google/common/base/l;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method e(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/l$a$a;->k:Lcom/google/common/base/l$a;

    iget-object v0, v0, Lcom/google/common/base/l$a;->a:Lcom/google/common/base/b;

    iget-object v1, p0, Lcom/google/common/base/l$b;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/b;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
