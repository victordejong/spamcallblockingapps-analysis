.class public final Lkotlinx/serialization/b/af;
.super Lkotlinx/serialization/b/ap;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/serialization/internal/LinkedHashMapClassDesc;",
        "Lkotlinx/serialization/internal/MapLikeDescriptor;",
        "keyDesc",
        "Lkotlinx/serialization/SerialDescriptor;",
        "valueDesc",
        "(Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "keyDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.collections.LinkedHashMap"

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, v0, p1, p2, v1}, Lkotlinx/serialization/b/ap;-><init>(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
