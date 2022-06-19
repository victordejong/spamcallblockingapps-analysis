.class public Lzh0$g;
.super Lzh0$o0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static a:Lzh0$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzh0$g;

    invoke-direct {v0}, Lzh0$g;-><init>()V

    sput-object v0, Lzh0$g;->a:Lzh0$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$o0;-><init>()V

    return-void
.end method

.method public static b()Lzh0$g;
    .locals 1

    sget-object v0, Lzh0$g;->a:Lzh0$g;

    return-object v0
.end method
