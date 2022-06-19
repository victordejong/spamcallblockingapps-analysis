.class public final Lkotlin/reflect/jvm/internal/impl/g/l$c;
.super Lkotlin/reflect/jvm/internal/impl/g/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/l$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/l$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must have no value parameters"

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/g/l;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method
