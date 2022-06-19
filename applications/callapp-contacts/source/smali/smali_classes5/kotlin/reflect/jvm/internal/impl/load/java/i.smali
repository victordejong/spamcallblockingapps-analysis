.class public final Lkotlin/reflect/jvm/internal/impl/load/java/i;
.super Lkotlin/reflect/jvm/internal/impl/load/java/q;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/q;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/i;->a:Ljava/lang/Object;

    return-void
.end method
