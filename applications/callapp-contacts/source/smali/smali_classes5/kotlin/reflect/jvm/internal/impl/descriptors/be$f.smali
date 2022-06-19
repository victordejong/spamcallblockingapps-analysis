.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "private_to_this"

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "private/*private to this*/"

    return-object v0
.end method
