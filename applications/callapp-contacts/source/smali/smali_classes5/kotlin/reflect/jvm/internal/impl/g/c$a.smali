.class public final Lkotlin/reflect/jvm/internal/impl/g/c$a;
.super Lkotlin/reflect/jvm/internal/impl/g/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/c$a;->b:Lkotlin/reflect/jvm/internal/impl/g/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/g/c;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
