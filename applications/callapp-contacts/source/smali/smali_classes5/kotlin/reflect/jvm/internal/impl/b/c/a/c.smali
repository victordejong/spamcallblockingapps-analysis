.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a/c;
.super Lkotlin/reflect/jvm/internal/impl/b/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/c/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/b/c/a/c$a;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/c$a;

    .line 19
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x3
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/a;-><init>([I)V

    return-void
.end method
