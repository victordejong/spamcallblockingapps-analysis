.class public final Lkotlinx/coroutines/b/g;
.super Lkotlinx/coroutines/b/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/NanoTimeSource;",
        "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;",
        "()V",
        "nanoTime",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lkotlinx/coroutines/b/g;

    invoke-direct {v0}, Lkotlinx/coroutines/b/g;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b/g;->a:Lkotlinx/coroutines/b/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lkotlinx/coroutines/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
