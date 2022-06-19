.class public abstract Lkotlin/reflect/jvm/internal/impl/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/g/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/g/f$b;,
        Lkotlin/reflect/jvm/internal/impl/g/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/g/f;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/g/b$a;->a(Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
