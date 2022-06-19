.class public final synthetic Lyl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldk;


# static fields
.field public static final a:Ldk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyl;

    invoke-direct {v0}, Lyl;-><init>()V

    sput-object v0, Lyl;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lak;
    .locals 1

    invoke-static {}, Lzl;->d()[Lak;

    move-result-object v0

    return-object v0
.end method
