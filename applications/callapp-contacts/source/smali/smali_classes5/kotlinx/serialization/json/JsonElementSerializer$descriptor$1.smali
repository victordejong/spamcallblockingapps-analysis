.class final Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonElementSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/l;",
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
        "Lkotlinx/serialization/SerialDescriptorBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lkotlinx/serialization/l;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->invoke(Lkotlinx/serialization/l;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/l;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "JsonPrimitive"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 29
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "JsonNull"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 30
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$3;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$3;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "JsonLiteral"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 31
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$4;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$4;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "JsonObject"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 32
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$5;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$5;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "JsonArray"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method
