.class public abstract Lkotlin/reflect/jvm/internal/u$c;
.super Lkotlin/reflect/jvm/internal/u$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KProperty$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/u$a<",
        "TV;TV;>;",
        "Lkotlin/reflect/KProperty$a<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004R\u001f\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;",
        "V",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;",
        "Lkotlin/reflect/KProperty$Getter;",
        "()V",
        "caller",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "getCaller",
        "()Lkotlin/reflect/jvm/internal/calls/Caller;",
        "caller$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;",
        "descriptor$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/ad$a;

.field private final c:Lkotlin/reflect/jvm/internal/ad$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/u$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    const-string v3, "caller"

    const-string v4, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/u$c;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$a;-><init>()V

    .line 150
    new-instance v0, Lkotlin/reflect/jvm/internal/u$c$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/u$c$b;-><init>(Lkotlin/reflect/jvm/internal/u$c;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/u$c;->b:Lkotlin/reflect/jvm/internal/ad$a;

    .line 155
    new-instance v0, Lkotlin/reflect/jvm/internal/u$c$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/u$c$a;-><init>(Lkotlin/reflect/jvm/internal/u$c;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/u$c;->c:Lkotlin/reflect/jvm/internal/ad$b;

    return-void
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$c;->b:Lkotlin/reflect/jvm/internal/ad$a;

    .line 1031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    return-object v0
.end method


# virtual methods
.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 147
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$c;->i()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$c;->c:Lkotlin/reflect/jvm/internal/ad$b;

    .line 2031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<get-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$c;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/u;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/descriptors/am;
    .locals 1

    .line 147
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$c;->i()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    return-object v0
.end method
