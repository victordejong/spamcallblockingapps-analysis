.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-void
.end method
