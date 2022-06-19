.class public final Lkotlin/reflect/jvm/internal/impl/g/f$b;
.super Lkotlin/reflect/jvm/internal/impl/g/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/f$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/f$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must be a member or an extension function"

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/g/f;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
