.class public final Lorg/mistergroup/shouldianswer/model/t;
.super Ljava/lang/Object;
.source "Countries.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/t$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/t;

.field private static b:Lorg/mistergroup/shouldianswer/model/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lorg/mistergroup/shouldianswer/model/t;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/t;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Landroidx/c/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Lorg/mistergroup/shouldianswer/model/t$a;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 17
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "AR"

    const-string v3, "https://ar.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "AU"

    const-string v3, "https://au.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "AT"

    const-string v3, "https://at.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "BE"

    const-string v3, "https://be.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "BR"

    const-string v3, "https://br.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CO"

    const-string v3, "https://co.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CZ"

    const-string v3, "https://www.muzutozvednout.cz"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CL"

    const-string v3, "https://cl.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CN"

    const-string v3, "https://cn.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "DE"

    const-string v3, "https://www.sollichannehmen.de"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "DK"

    const-string v3, "https://dk.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "FI"

    const-string v3, "https://fi.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "FR"

    const-string v3, "https://www.doisjerepondre.fr"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "GB"

    const-string v3, "https://www.shouldianswer.co.uk"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "HK"

    const-string v3, "https://hk.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "HU"

    const-string v3, "https://hu.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "IN"

    const-string v3, "https://in.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "ID"

    const-string v3, "https://id.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "IT"

    const-string v3, "https://www.chistachiamando.it"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CI"

    const-string v3, "https://ci.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "JP"

    const-string v3, "https://jp.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "KE"

    const-string v3, "https://ke.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "KR"

    const-string v3, "https://kr.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CD"

    const-string v3, "https://cd.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "MX"

    const-string v3, "https://mx.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "MZ"

    const-string v3, "https://mz.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "NL"

    const-string v3, "https://nl.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "NZ"

    const-string v3, "https://nz.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "NG"

    const-string v3, "https://ng.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "NO"

    const-string v3, "https://no.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "PE"

    const-string v3, "https://pe.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "PL"

    const-string v3, "https://www.odebractelefon.pl"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "PT"

    const-string v3, "https://pt.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "RU"

    const-string v3, "https://www.neberitrubku.ru"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "SK"

    const-string v3, "https://www.mozemtozdvihnut.sk"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "ES"

    const-string v3, "https://www.responderono.es"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "SE"

    const-string v3, "https://se.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "CH"

    const-string v3, "https://ch.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "ZA"

    const-string v3, "https://za.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "US"

    const-string v3, "https://www.shouldianswer.com"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v2, "VE"

    const-string v3, "https://ve.shouldianswer.net"

    invoke-direct {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Landroidx/c/a;

    invoke-direct {v1}, Landroidx/c/a;-><init>()V

    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/t$a;

    .line 59
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/t$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/model/t$a;
    .locals 9

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/model/t;->b:Lorg/mistergroup/shouldianswer/model/t$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/t$a;

    const-string v1, "WW"

    const-string v2, "https://www.shouldianswer.net"

    invoke-direct {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/t;->b()Landroidx/c/a;

    move-result-object v2

    .line 71
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/model/t$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 74
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Countries.getCountry Set worldwide url to ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    new-instance v0, Lorg/mistergroup/shouldianswer/model/t$a;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/mistergroup/shouldianswer/model/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/t$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v2, v3}, Landroidx/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 82
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Countries.getCountry countryActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "countryActive"

    invoke-virtual {v0, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/t$a;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/t;->b:Lorg/mistergroup/shouldianswer/model/t$a;

    .line 86
    sget-object v0, Lorg/mistergroup/shouldianswer/model/t;->b:Lorg/mistergroup/shouldianswer/model/t$a;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    return-object v0
.end method
