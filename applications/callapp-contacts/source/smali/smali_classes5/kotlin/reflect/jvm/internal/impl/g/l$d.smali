.class public final Lkotlin/reflect/jvm/internal/impl/g/l$d;
.super Lkotlin/reflect/jvm/internal/impl/g/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/l$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/l$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/l$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must have a single value parameter"

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/g/l;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
