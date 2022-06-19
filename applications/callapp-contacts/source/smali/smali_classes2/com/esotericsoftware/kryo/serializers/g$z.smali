.class public Lcom/esotericsoftware/kryo/serializers/g$z;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Locale;

.field public static final b:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 767
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/g$z;->a:Ljava/util/Locale;

    .line 768
    new-instance v0, Ljava/util/Locale;

    const-string v3, "ES"

    invoke-direct {v0, v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/g$z;->b:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 822
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 823
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1815
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p1

    .line 1816
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p3

    .line 1817
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p2

    .line 2772
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2773
    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2776
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object p1

    .line 2778
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p1

    .line 2779
    :cond_2
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    return-object p1

    .line 2780
    :cond_3
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/g$z;->a:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 2781
    :cond_4
    sget-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    return-object p1

    .line 2782
    :cond_5
    sget-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    return-object p1

    .line 2783
    :cond_6
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    return-object p1

    .line 2784
    :cond_7
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    return-object p1

    .line 2785
    :cond_8
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object p1

    .line 2786
    :cond_9
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    return-object p1

    .line 2787
    :cond_a
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p1

    .line 2789
    :cond_b
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    return-object p1

    .line 2790
    :cond_c
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    return-object p1

    .line 2791
    :cond_d
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/g$z;->b:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    .line 2792
    :cond_e
    sget-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    return-object p1

    .line 2793
    :cond_f
    sget-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    return-object p1

    .line 2794
    :cond_10
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object p1

    .line 2795
    :cond_11
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object p1

    .line 2802
    :cond_12
    sget-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    return-object p1

    .line 2803
    :cond_13
    sget-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-static {v0, p1, p3, p2}, Lcom/esotericsoftware/kryo/serializers/g$z;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p1, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    return-object p1

    .line 2805
    :cond_14
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 765
    check-cast p3, Ljava/util/Locale;

    .line 2809
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->b(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->b(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {p3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    return-void
.end method
