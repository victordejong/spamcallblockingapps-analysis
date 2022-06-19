.class public abstract Lkotlinx/serialization/u;
.super Lkotlinx/serialization/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/u$c;,
        Lkotlinx/serialization/u$a;,
        Lkotlinx/serialization/u$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00042\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/serialization/UnionKind;",
        "Lkotlinx/serialization/SerialKind;",
        "()V",
        "CONTEXTUAL",
        "Companion",
        "ENUM_KIND",
        "Lkotlinx/serialization/UnionKind$ENUM_KIND;",
        "Lkotlinx/serialization/UnionKind$CONTEXTUAL;",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/u$b;

.field private static final b:Lkotlinx/serialization/t$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/u$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/u;->a:Lkotlinx/serialization/u$b;

    .line 241
    sget-object v0, Lkotlinx/serialization/t$d;->a:Lkotlinx/serialization/t$d;

    sput-object v0, Lkotlinx/serialization/u;->b:Lkotlinx/serialization/t$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, v0}, Lkotlinx/serialization/p;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lkotlinx/serialization/u;-><init>()V

    return-void
.end method
