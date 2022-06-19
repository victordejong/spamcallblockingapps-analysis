.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "protected"

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
