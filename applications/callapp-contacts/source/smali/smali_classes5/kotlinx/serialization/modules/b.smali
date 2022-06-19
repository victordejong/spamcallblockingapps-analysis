.class public interface abstract Lkotlinx/serialization/modules/b;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J(\u0010\u0006\u001a\n\u0012\u0004\u0012\u0002H\u0008\u0018\u00010\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH&J7\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0008\u0018\u00010\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\r\u001a\u0002H\u0008H&\u00a2\u0006\u0002\u0010\u000eJ2\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0008\u0018\u00010\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/serialization/modules/SerialModule;",
        "",
        "dumpTo",
        "",
        "collector",
        "Lkotlinx/serialization/modules/SerialModuleCollector;",
        "getContextual",
        "Lkotlinx/serialization/KSerializer;",
        "T",
        "kclass",
        "Lkotlin/reflect/KClass;",
        "getPolymorphic",
        "baseClass",
        "value",
        "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;",
        "serializedClassName",
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


# virtual methods
.method public abstract a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lkotlin/reflect/c;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;TT;)",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lkotlin/reflect/c;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lkotlinx/serialization/modules/d;)V
.end method
