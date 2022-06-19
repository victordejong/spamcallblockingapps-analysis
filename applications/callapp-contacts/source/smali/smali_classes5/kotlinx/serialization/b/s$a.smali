.class final Lkotlinx/serialization/b/s$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/b/s;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lkotlinx/serialization/SerialDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/serialization/SerialDescriptor;",
        "invoke",
        "()[Lkotlinx/serialization/SerialDescriptor;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/b/s;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlinx/serialization/b/s;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/b/s$a;->a:Lkotlinx/serialization/b/s;

    iput p2, p0, Lkotlinx/serialization/b/s$a;->b:I

    iput-object p3, p0, Lkotlinx/serialization/b/s$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1022
    iget v0, p0, Lkotlinx/serialization/b/s$a;->b:I

    new-array v1, v0, [Lkotlinx/serialization/SerialDescriptor;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkotlinx/serialization/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lkotlinx/serialization/b/s$a;->a:Lkotlinx/serialization/b/s;

    .line 1067
    iget-object v4, v4, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    .line 1102
    aget-object v4, v4, v2

    .line 1022
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/t$d;->a:Lkotlinx/serialization/t$d;

    check-cast v4, Lkotlinx/serialization/p;

    invoke-static {v3, v4}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
