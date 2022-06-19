.class public abstract Lkotlin/reflect/jvm/internal/u;
.super Lkotlin/reflect/jvm/internal/f;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/u$a;,
        Lkotlin/reflect/jvm/internal/u$c;,
        Lkotlin/reflect/jvm/internal/u$d;,
        Lkotlin/reflect/jvm/internal/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/f<",
        "TV;>;",
        "Lkotlin/reflect/KProperty<",
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
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008 \u0018\u0000 >*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004=>?@B)\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u0017\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eB3\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0011J\n\u00104\u001a\u0004\u0018\u00010\u0017H\u0004J\u0013\u00105\u001a\u00020)2\u0008\u00106\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u001e\u00107\u001a\u0004\u0018\u00010\n2\u0008\u00108\u001a\u0004\u0018\u00010\u00172\u0008\u00109\u001a\u0004\u0018\u00010\nH\u0004J\u0008\u0010:\u001a\u00020;H\u0016J\u0008\u0010<\u001a\u00020\u0007H\u0016R\u001c\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\r0\r0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001dR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0018\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010*R\u0013\u0010.\u001a\u0004\u0018\u00010\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00102\u00a8\u0006A"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KPropertyImpl;",
        "V",
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "Lkotlin/reflect/KProperty;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "name",
        "",
        "signature",
        "boundReceiver",
        "",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "descriptorInitialValue",
        "rawBoundReceiver",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Ljava/lang/Object;)V",
        "_descriptor",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "kotlin.jvm.PlatformType",
        "_javaField",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "Ljava/lang/reflect/Field;",
        "getBoundReceiver",
        "()Ljava/lang/Object;",
        "caller",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "getCaller",
        "()Lkotlin/reflect/jvm/internal/calls/Caller;",
        "getContainer",
        "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "defaultCaller",
        "getDefaultCaller",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;",
        "getter",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;",
        "getGetter",
        "()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;",
        "isBound",
        "",
        "()Z",
        "isConst",
        "isLateinit",
        "isSuspend",
        "javaField",
        "getJavaField",
        "()Ljava/lang/reflect/Field;",
        "getName",
        "()Ljava/lang/String;",
        "getSignature",
        "computeDelegateField",
        "equals",
        "other",
        "getDelegate",
        "field",
        "receiver",
        "hashCode",
        "",
        "toString",
        "Accessor",
        "Companion",
        "Getter",
        "Setter",
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
.field public static final d:Lkotlin/reflect/jvm/internal/u$b;

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/ad$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$b<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lkotlin/reflect/jvm/internal/k;

.field final c:Ljava/lang/String;

.field private final e:Lkotlin/reflect/jvm/internal/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/u$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/u;->d:Lkotlin/reflect/jvm/internal/u$b;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/u;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 34
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/u;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/f;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/u;->f:Ljava/lang/String;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/u;->g:Ljava/lang/Object;

    .line 51
    new-instance p1, Lkotlin/reflect/jvm/internal/u$f;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/u$f;-><init>(Lkotlin/reflect/jvm/internal/u;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy {\u2026y -> null\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u;->a:Lkotlin/reflect/jvm/internal/ad$b;

    .line 101
    new-instance p1, Lkotlin/reflect/jvm/internal/u$e;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/u$e;-><init>(Lkotlin/reflect/jvm/internal/u;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p4, p1}, Lkotlin/reflect/jvm/internal/ad;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object p1

    const-string p2, "ReflectProperties.lazySo\u2026or(name, signature)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u;->e:Lkotlin/reflect/jvm/internal/ad$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 43
    sget-object v6, Lkotlin/jvm/internal/e;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 38
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/u;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 86
    :try_start_0
    sget-object v0, Lkotlin/reflect/jvm/internal/u;->h:Ljava/lang/Object;

    if-ne p2, v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Lkotlin/reflect/full/IllegalPropertyDelegateAccessException;

    invoke-direct {p2, p1}, Lkotlin/reflect/full/IllegalPropertyDelegateAccessException;-><init>(Ljava/lang/IllegalAccessException;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

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

    .line 107
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->h()Lkotlin/reflect/jvm/internal/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$c;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "*>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->h()Lkotlin/reflect/jvm/internal/u$c;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/k;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 118
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/aj;->b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2028
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 3028
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 119
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/u;->g:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/u;->g:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/jvm/internal/e;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->f:Ljava/lang/String;

    return-object v0
.end method

.method public abstract h()Lkotlin/reflect/jvm/internal/u$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/u$c<",
            "TV;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 4028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 123
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 2

    .line 47
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/a/h;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isConst()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->ar_()Z

    move-result v0

    return v0
.end method

.method public isLateinit()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->l()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/reflect/Field;
    .locals 1

    .line 79
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method protected final k()Ljava/lang/reflect/Field;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->as_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->j()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 2

    .line 105
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u;->e:Lkotlin/reflect/jvm/internal/ad$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_descriptor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lkotlin/reflect/jvm/internal/af;->a:Lkotlin/reflect/jvm/internal/af;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/af;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
