.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;
.super Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final d:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0, p1, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZ)V

    .line 597
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;->d:Z

    return-void
.end method
