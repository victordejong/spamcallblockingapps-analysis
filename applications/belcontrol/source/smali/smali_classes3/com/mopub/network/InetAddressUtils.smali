.class public Lcom/mopub/network/InetAddressUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    sget-object v0, Lcom/mopub/network/InetAddressUtils;->a:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method
