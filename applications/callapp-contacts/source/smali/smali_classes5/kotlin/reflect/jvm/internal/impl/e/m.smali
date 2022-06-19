.class public abstract enum Lkotlin/reflect/jvm/internal/impl/e/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/e/m$b;,
        Lkotlin/reflect/jvm/internal/impl/e/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/e/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/e/m;

.field public static final enum HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

.field public static final enum PLAIN:Lkotlin/reflect/jvm/internal/impl/e/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 265
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/m$b;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/e/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/m;->PLAIN:Lkotlin/reflect/jvm/internal/impl/e/m;

    .line 268
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/e/m$a;

    const-string v3, "HTML"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/e/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/e/m;->HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/reflect/jvm/internal/impl/e/m;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/e/m;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/e/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/m;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/e/m;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/e/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 273
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/e/m;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/e/m;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/m;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/e/m;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/e/m;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
