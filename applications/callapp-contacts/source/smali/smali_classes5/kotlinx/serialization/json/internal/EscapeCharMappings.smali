.class public final Lkotlinx/serialization/json/internal/EscapeCharMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/EscapeCharMappings;",
        "",
        "()V",
        "ESCAPE_2_CHAR",
        "",
        "initC2ESC",
        "",
        "c",
        "",
        "esc",
        "",
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
.field public static final ESCAPE_2_CHAR:[C

.field public static final INSTANCE:Lkotlinx/serialization/json/internal/EscapeCharMappings;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/EscapeCharMappings;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/EscapeCharMappings;

    const/16 v1, 0x75

    new-array v2, v1, [C

    .line 72
    sput-object v2, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 76
    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    const/16 v2, 0x62

    .line 79
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0x9

    const/16 v2, 0x74

    .line 80
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xa

    const/16 v2, 0x6e

    .line 81
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xc

    const/16 v2, 0x66

    .line 82
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xd

    const/16 v2, 0x72

    .line 83
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0x2f

    .line 84
    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    const/16 v1, 0x22

    .line 85
    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    const/16 v1, 0x5c

    .line 86
    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initC2ESC(CC)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    return-void
.end method

.method private final initC2ESC(IC)V
    .locals 1

    const/16 v0, 0x75

    if-eq p2, v0, :cond_0

    .line 90
    sget-object v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    int-to-char p1, p1

    aput-char p1, v0, p2

    :cond_0
    return-void
.end method
