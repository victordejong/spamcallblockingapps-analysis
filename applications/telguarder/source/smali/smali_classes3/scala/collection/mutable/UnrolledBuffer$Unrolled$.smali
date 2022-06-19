.class public Lscala/collection/mutable/UnrolledBuffer$Unrolled$;
.super Ljava/lang/Object;
.source "UnrolledBuffer.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/UnrolledBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unrolled$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/UnrolledBuffer$Unrolled$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled$;

    invoke-direct {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$Unrolled$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$4()Lscala/runtime/Null$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/runtime/Null$;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
