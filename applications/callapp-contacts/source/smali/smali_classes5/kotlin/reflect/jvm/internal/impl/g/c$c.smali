.class public final Lkotlin/reflect/jvm/internal/impl/g/c$c;
.super Lkotlin/reflect/jvm/internal/impl/g/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/g/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/c$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/c$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/c$c;->b:Lkotlin/reflect/jvm/internal/impl/g/c$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/g/c;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
