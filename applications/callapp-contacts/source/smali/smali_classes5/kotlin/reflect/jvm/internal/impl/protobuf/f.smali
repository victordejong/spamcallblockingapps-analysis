.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;
    }
.end annotation


# static fields
.field private static volatile b:Z = false

.field private static final c:Lkotlin/reflect/jvm/internal/impl/protobuf/f;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;
    .locals 1

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;-><init>()V

    return-object v0
.end method

.method public static b()Lkotlin/reflect/jvm/internal/impl/protobuf/f;
    .locals 1

    .line 97
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "**>;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;

    .line 1825
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1830
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 2694
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    .line 125
    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
