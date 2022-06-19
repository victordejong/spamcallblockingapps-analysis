.class public final Lkotlinx/serialization/modules/e$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/modules/g;",
        "Lkotlin/v;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/serialization/modules/SerializersModuleBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/modules/b;

.field final synthetic b:Lkotlinx/serialization/modules/b;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/modules/b;Lkotlinx/serialization/modules/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/modules/e$a;->a:Lkotlinx/serialization/modules/b;

    iput-object p2, p0, Lkotlinx/serialization/modules/e$a;->b:Lkotlinx/serialization/modules/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/serialization/modules/g;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lkotlinx/serialization/modules/e$a;->a:Lkotlinx/serialization/modules/b;

    invoke-virtual {p1, v0}, Lkotlinx/serialization/modules/g;->a(Lkotlinx/serialization/modules/b;)V

    .line 1039
    iget-object v0, p0, Lkotlinx/serialization/modules/e$a;->b:Lkotlinx/serialization/modules/b;

    invoke-virtual {p1, v0}, Lkotlinx/serialization/modules/g;->a(Lkotlinx/serialization/modules/b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
