.class public final Lkotlin/reflect/jvm/internal/impl/load/java/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field final b:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;->b:Z

    return-void
.end method
