.class public final enum Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final enum CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a;

.field public static final enum FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final enum MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final enum MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final enum SYNTHETIC_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public static final enum UNKNOWN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field private static final entryById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 28
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v3, "CLASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 29
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v5, "FILE_FACADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 30
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v7, "SYNTHETIC_CLASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->SYNTHETIC_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 31
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v9, "MULTIFILE_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 32
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const-string v11, "MULTIFILE_CLASS_PART"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a;

    .line 35
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->values()[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    move-result-object v0

    .line 80
    array-length v1, v0

    invoke-static {v1}, Lkotlin/a/ai;->a(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/f/d;->c(II)I

    move-result v1

    .line 81
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 82
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 35
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->entryById:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->id:I

    return-void
.end method

.method public static final synthetic access$getEntryById$cp()Ljava/util/Map;
    .locals 1

    .line 26
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->entryById:Ljava/util/Map;

    return-object v0
.end method

.method public static final getById(I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
    .locals 1

    .line 1038
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->access$getEntryById$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 40
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 26
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->id:I

    return v0
.end method
