.class public interface abstract Lkotlinx/serialization/modules/d;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0008H&JF\u0010\t\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\n*\u00020\u0001\"\u0008\u0008\u0001\u0010\u000b*\u0002H\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0008H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/serialization/modules/SerialModuleCollector;",
        "",
        "contextual",
        "",
        "T",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "polymorphic",
        "Base",
        "Sub",
        "baseClass",
        "actualClass",
        "actualSerializer",
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
.method public abstract contextual(Lkotlin/reflect/c;Lkotlinx/serialization/KSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract polymorphic(Lkotlin/reflect/c;Lkotlin/reflect/c;Lkotlinx/serialization/KSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lkotlin/reflect/c<",
            "TBase;>;",
            "Lkotlin/reflect/c<",
            "TSub;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TSub;>;)V"
        }
    .end annotation
.end method
